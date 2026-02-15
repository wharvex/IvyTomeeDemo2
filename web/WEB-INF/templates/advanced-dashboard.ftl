<#--
    Advanced Dashboard Template - Demonstrates Complex FreeMarker Features

    This template showcases:
    - Complex macros with nested content
    - Conditionals and switch-like logic
    - List iteration with multiple variables
    - Built-in functions (string manipulation, number formatting, date handling)
    - Error handling with attempt/recover
    - Variable scoping and assignments
    - Custom functions and transformations
    - Hash/Map operations
-->

<#-- Global Configuration -->
<#setting number_format="0.##">
<#setting date_format="yyyy-MM-dd">
<#setting time_format="HH:mm:ss">
<#setting locale="en_US">

<#-- Import shared macros -->
<#include "_header.ftl">
<#include "_complex_macros.ftl">

<#-- Define local variables -->
<#assign pageTitle = "Advanced Dashboard">
<#assign currentYear = .now?string("yyyy")>
<#assign debugMode = debugMode!false>

<#-- Complex Macro: Render data cards with various states -->
<#macro renderCard title value status="normal" icon="" trend=0 details={}>
    <div class="card card-${status}" role="article" aria-labelledby="card-${title?replace(' ', '-')?lower_case}">
        <div class="card-header">
            <#if icon?has_content>
                <span class="icon icon-${icon}" aria-hidden="true"></span>
            </#if>
            <h3 id="card-${title?replace(' ', '-')?lower_case}">${title}</h3>
        </div>
        <div class="card-body">
            <div class="card-value">
                <#attempt>
                    <#if value?is_number>
                        ${value?string(",##0.00")}
                    <#elseif value?is_date>
                        ${value?string.medium}
                    <#else>
                        ${value?html}
                    </#if>
                <#recover>
                    <span class="error">N/A</span>
                </#attempt>
            </div>

            <#-- Render trend indicator -->
            <#if trend != 0>
                <div class="trend trend-${(trend > 0)?then('up', 'down')}" aria-label="Trend: ${(trend > 0)?then('increasing', 'decreasing')} by ${trend?abs}%">
                    <span aria-hidden="true">${(trend > 0)?then('▲', '▼')}</span>
                    <span>${trend?abs}%</span>
                </div>
            </#if>

            <#-- Nested content support -->
            <#nested>

            <#-- Render additional details if provided -->
            <#if details?has_content>
                <div class="card-details">
                    <#list details as key, val>
                        <div class="detail-item">
                            <span class="detail-key">${key?cap_first}:</span>
                            <span class="detail-value">${val?string}</span>
                        </div>
                    </#list>
                </div>
            </#if>
        </div>
    </div>
</#macro>

<#-- Macro: Render data table with sorting and pagination -->
<#macro renderDataTable columns=[] rows=[] currentPage=1 totalPages=1 sortBy="" sortDir="asc">
    <div class="data-table-container" role="region" aria-label="Data table">
        <table class="data-table" role="table">
            <thead>
                <tr role="row">
                    <#list columns as col>
                        <th role="columnheader"
                            class="${(sortBy == col.id)?then('sorted sorted-' + sortDir, '')}"
                            scope="col">
                            <a href="?sort=${col.id}&dir=${(sortBy == col.id && sortDir == 'asc')?then('desc', 'asc')}"
                               aria-label="Sort by ${col.label} ${(sortBy == col.id)?then((sortDir == 'asc')?then('descending', 'ascending'), '')}">
                                ${col.label}
                                <#if sortBy == col.id>
                                    <span aria-hidden="true">${(sortDir == "asc")?then("↑", "↓")}</span>
                                </#if>
                            </a>
                        </th>
                    </#list>
                </tr>
            </thead>
            <tbody>
                <#if rows?has_content>
                    <#list rows as row>
                        <tr role="row" class="${row_index?is_odd_item?then('odd', 'even')}">
                            <#list columns as col>
                                <td role="cell" data-label="${col.label}">
                                    <#attempt>
                                        <#assign cellValue = row[col.id]!"">
                                        <#if col.type?? && col.type == "number">
                                            ${cellValue?number?string(",##0.00")}
                                        <#elseif col.type?? && col.type == "date">
                                            ${cellValue?date?string.medium}
                                        <#elseif col.type?? && col.type == "boolean">
                                            <span class="badge badge-${cellValue?then('success', 'danger')}" role="status">
                                                ${cellValue?then('Yes', 'No')}
                                            </span>
                                        <#elseif col.type?? && col.type == "link">
                                            <a href="${row[col.linkField]!''}" aria-label="View ${col.label}">
                                                ${cellValue?html}
                                            </a>
                                        <#else>
                                            ${cellValue?html}
                                        </#if>
                                    <#recover>
                                        <span class="text-muted">—</span>
                                    </#attempt>
                                </td>
                            </#list>
                        </tr>
                    </#list>
                <#else>
                    <tr>
                        <td colspan="${columns?size}" class="no-data">
                            No data available
                        </td>
                    </tr>
                </#if>
            </tbody>
        </table>

        <#-- Pagination -->
        <#if totalPages gt 1>
            <nav class="pagination" role="navigation" aria-label="Pagination">
                <ul>
                    <#if currentPage gt 1>
                        <li><a href="?page=${currentPage - 1}" aria-label="Previous page">Previous</a></li>
                    </#if>

                    <#list 1..totalPages as pageNum>
                        <#if (pageNum == 1) || (pageNum == totalPages) || ((pageNum >= currentPage - 2) && (pageNum <= currentPage + 2))>
                            <li class="${(pageNum == currentPage)?then('active', '')}">
                                <a href="?page=${pageNum}"
                                   aria-label="Page ${pageNum}"
                                   ${(pageNum == currentPage)?then('aria-current="page"', '')}>
                                    ${pageNum}
                                </a>
                            </li>
                        <#elseif (pageNum == currentPage - 3) || (pageNum == currentPage + 3)>
                            <li class="ellipsis" aria-hidden="true">…</li>
                        </#if>
                    </#list>

                    <#if currentPage lt totalPages>
                        <li><a href="?page=${currentPage + 1}" aria-label="Next page">Next</a></li>
                    </#if>
                </ul>
            </nav>
        </#if>
    </div>
</#macro>

<#-- Macro: Render status badge based on value -->
<#macro statusBadge value>
    <#if value?is_string>
        <#assign normalizedValue = value?lower_case?trim>
        <#assign badgeClass = "">
        <#assign badgeLabel = value>

        <#-- Switch-like logic using multiple if statements -->
        <#if normalizedValue == "active" || normalizedValue == "approved" || normalizedValue == "success">
            <#assign badgeClass = "success">
        <#elseif normalizedValue == "pending" || normalizedValue == "in-progress" || normalizedValue == "processing">
            <#assign badgeClass = "warning">
        <#elseif normalizedValue == "inactive" || normalizedValue == "rejected" || normalizedValue == "error" || normalizedValue == "failed">
            <#assign badgeClass = "danger">
        <#elseif normalizedValue == "draft" || normalizedValue == "unknown">
            <#assign badgeClass = "secondary">
        <#else>
            <#assign badgeClass = "primary">
        </#if>

        <span class="badge badge-${badgeClass}" role="status">${badgeLabel?cap_first}</span>
    <#else>
        <span class="badge badge-secondary" role="status">N/A</span>
    </#if>
</#macro>

<#-- Macro: Chart data processor -->
<#macro renderChartData data chartType="bar" labels=[]>
    <div class="chart-container" data-chart-type="${chartType}">
        <canvas id="chart-${chartType}-${.now?long}"
                role="img"
                aria-label="${chartType?cap_first} chart visualization"
                data-labels='[<#list labels as label>"${label?js_string}"<#sep>, </#list>]'
                data-values='[<#list data as value>${value}<#sep>, </#list>]'>
        </canvas>
        <#-- Fallback table for accessibility -->
        <div class="chart-fallback" role="table" aria-label="Chart data in tabular format">
            <table>
                <thead>
                    <tr>
                        <th scope="col">Label</th>
                        <th scope="col">Value</th>
                    </tr>
                </thead>
                <tbody>
                    <#list labels as label>
                        <tr>
                            <td>${label?html}</td>
                            <td>${data[label_index]?string}</td>
                        </tr>
                    </#list>
                </tbody>
            </table>
        </div>
    </div>
</#macro>

<#-- Function: Calculate statistics from a list of numbers -->
<#function calculateStats numbers>
    <#if !numbers?has_content>
        <#return {"count": 0, "sum": 0, "avg": 0, "min": 0, "max": 0}>
    </#if>

    <#local sum = 0>
    <#local min = numbers[0]>
    <#local max = numbers[0]>

    <#list numbers as num>
        <#local sum = sum + num>
        <#if num < min>
            <#local min = num>
        </#if>
        <#if num gt max>
            <#local max = num>
        </#if>
    </#list>

    <#local avg = sum / numbers?size>

    <#return {
        "count": numbers?size,
        "sum": sum,
        "avg": avg?round,
        "min": min,
        "max": max
    }>
</#function>

<#-- Function: Format file size -->
<#function formatFileSize bytes>
    <#if bytes < 1024>
        <#return bytes + " B">
    <#elseif bytes < 1048576>
        <#return (bytes / 1024)?string("0.##") + " KB">
    <#elseif bytes < 1073741824>
        <#return (bytes / 1048576)?string("0.##") + " MB">
    <#else>
        <#return (bytes / 1073741824)?string("0.##") + " GB">
    </#if>
</#function>

<#-- Function: Generate time ago string -->
<#function timeAgo date>
    <#assign now = .now>
    <#assign diff = (now?long - date?long) / 1000> <#-- seconds -->

    <#if diff < 60>
        <#return "just now">
    <#elseif diff < 3600>
        <#assign minutes = (diff / 60)?floor>
        <#return minutes + " minute" + ((minutes != 1)?then("s", "")) + " ago">
    <#elseif diff < 86400>
        <#assign hours = (diff / 3600)?floor>
        <#return hours + " hour" + ((hours != 1)?then("s", "")) + " ago">
    <#elseif diff < 2592000>
        <#assign days = (diff / 86400)?floor>
        <#return days + " day" + ((days != 1)?then("s", "")) + " ago">
    <#else>
        <#return date?string.medium>
    </#if>
</#function>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${pageTitle} - ${appName!"Dashboard"}</title>
    <meta name="description" content="Advanced dashboard with complex data visualization and analytics">
    <link rel="stylesheet" href="${contextPath!''}/css/global.css">
    <style>
        .dashboard-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 1.5rem;
            margin: 2rem 0;
        }

        .card {
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 1.5rem;
            background: #fff;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            transition: transform 0.2s;
        }

        .card:hover {
            transform: translateY(-4px);
            box-shadow: 0 4px 8px rgba(0,0,0,0.15);
        }

        .card-success { border-left: 4px solid #28a745; }
        .card-warning { border-left: 4px solid #ffc107; }
        .card-danger { border-left: 4px solid #dc3545; }
        .card-info { border-left: 4px solid #17a2b8; }

        .card-header {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            margin-bottom: 1rem;
        }

        .card-value {
            font-size: 2rem;
            font-weight: bold;
            margin-bottom: 0.5rem;
        }

        .trend {
            font-size: 0.875rem;
            font-weight: 600;
        }

        .trend-up { color: #28a745; }
        .trend-down { color: #dc3545; }

        .data-table {
            width: 100%;
            border-collapse: collapse;
            margin: 1rem 0;
        }

        .data-table th,
        .data-table td {
            padding: 0.75rem;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .data-table th {
            background: #f8f9fa;
            font-weight: 600;
            color: #495057;
        }

        .data-table tbody tr:hover {
            background: #f8f9fa;
        }

        .data-table .odd {
            background: #fff;
        }

        .data-table .even {
            background: #f9f9f9;
        }

        .badge {
            display: inline-block;
            padding: 0.25rem 0.75rem;
            border-radius: 4px;
            font-size: 0.875rem;
            font-weight: 600;
            text-transform: uppercase;
        }

        .badge-success { background: #28a745; color: #fff; }
        .badge-warning { background: #ffc107; color: #000; }
        .badge-danger { background: #dc3545; color: #fff; }
        .badge-primary { background: #007bff; color: #fff; }
        .badge-secondary { background: #6c757d; color: #fff; }

        .pagination {
            display: flex;
            justify-content: center;
            margin: 2rem 0;
        }

        .pagination ul {
            display: flex;
            list-style: none;
            gap: 0.5rem;
            padding: 0;
        }

        .pagination a {
            padding: 0.5rem 0.75rem;
            border: 1px solid #ddd;
            border-radius: 4px;
            text-decoration: none;
            color: #007bff;
        }

        .pagination .active a {
            background: #007bff;
            color: #fff;
            border-color: #007bff;
        }

        .debug-panel {
            background: #f8f9fa;
            border: 1px solid #dee2e6;
            border-radius: 4px;
            padding: 1rem;
            margin: 2rem 0;
            font-family: monospace;
            font-size: 0.875rem;
        }
    </style>
</head>
<body>
    <header role="banner">
        <h1>${pageTitle}</h1>
        <p class="subtitle">Comprehensive analytics and data visualization</p>
    </header>

    <main role="main" id="main-content">
        <#-- Summary Cards Section -->
        <section aria-labelledby="summary-heading">
            <h2 id="summary-heading">Performance Summary</h2>
            <div class="dashboard-grid">
                <#-- Example data that would come from the controller -->
                <#assign metrics = {
                    "totalUsers": {"value": 1247, "trend": 12.5, "status": "success"},
                    "revenue": {"value": 45678.90, "trend": -3.2, "status": "warning"},
                    "activeOrders": {"value": 89, "trend": 0, "status": "info"},
                    "conversionRate": {"value": 4.7, "trend": 1.8, "status": "success"}
                }>

                <@renderCard title="Total Users" value=metrics.totalUsers.value status=metrics.totalUsers.status icon="users" trend=metrics.totalUsers.trend>
                    <p class="card-footer">Since last month</p>
                </@renderCard>

                <@renderCard title="Revenue" value=metrics.revenue.value status=metrics.revenue.status icon="dollar" trend=metrics.revenue.trend details={"period": "Q1 2026", "target": "50,000"}>
                </@renderCard>

                <@renderCard title="Active Orders" value=metrics.activeOrders.value status=metrics.activeOrders.status icon="cart" trend=metrics.activeOrders.trend>
                </@renderCard>

                <@renderCard title="Conversion Rate" value=metrics.conversionRate.value + "%" status=metrics.conversionRate.status icon="chart" trend=metrics.conversionRate.trend>
                </@renderCard>
            </div>
        </section>

        <#-- Data Table Section -->
        <section aria-labelledby="orders-heading">
            <h2 id="orders-heading">Recent Orders</h2>

            <#-- Example data structure -->
            <#assign tableColumns = [
                {"id": "orderId", "label": "Order ID", "type": "text"},
                {"id": "customer", "label": "Customer", "type": "text"},
                {"id": "amount", "label": "Amount", "type": "number"},
                {"id": "status", "label": "Status", "type": "text"},
                {"id": "date", "label": "Date", "type": "text"},
                {"id": "actions", "label": "Actions", "type": "link", "linkField": "viewUrl"}
            ]>

            <#assign tableRows = [
                {"orderId": "ORD-1001", "customer": "John Doe", "amount": 299.99, "status": "approved", "date": "2026-02-10", "viewUrl": "/orders/1001"},
                {"orderId": "ORD-1002", "customer": "Jane Smith", "amount": 149.50, "status": "pending", "date": "2026-02-11", "viewUrl": "/orders/1002"},
                {"orderId": "ORD-1003", "customer": "Bob Johnson", "amount": 599.00, "status": "processing", "date": "2026-02-12", "viewUrl": "/orders/1003"},
                {"orderId": "ORD-1004", "customer": "Alice Brown", "amount": 89.99, "status": "failed", "date": "2026-02-13", "viewUrl": "/orders/1004"},
                {"orderId": "ORD-1005", "customer": "Charlie Wilson", "amount": 449.75, "status": "success", "date": "2026-02-14", "viewUrl": "/orders/1005"}
            ]>

            <#-- Custom renderer for status column -->
            <#list tableRows as row>
                <#-- Override status display -->
            </#list>

            <@renderDataTable columns=tableColumns rows=tableRows currentPage=1 totalPages=5 sortBy="date" sortDir="desc" />
        </section>

        <#-- Statistics Section -->
        <section aria-labelledby="statistics-heading">
            <h2 id="statistics-heading">Sales Statistics</h2>

            <#assign salesData = [150, 230, 180, 290, 320, 275, 390]>
            <#assign salesLabels = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]>
            <#assign stats = calculateStats(salesData)>

            <div class="stats-summary">
                <p><strong>Total Sales:</strong> ${stats.sum?string(",##0")}</p>
                <p><strong>Average:</strong> ${stats.avg?string(",##0")}</p>
                <p><strong>Minimum:</strong> ${stats.min?string(",##0")}</p>
                <p><strong>Maximum:</strong> ${stats.max?string(",##0")}</p>
                <p><strong>Data Points:</strong> ${stats.count}</p>
            </div>

            <@renderChartData data=salesData chartType="line" labels=salesLabels />
        </section>

        <#-- Complex List Processing Section -->
        <section aria-labelledby="activities-heading">
            <h2 id="activities-heading">Recent Activities</h2>

            <#assign activities = [
                {"type": "login", "user": "admin@example.com", "timestamp": .now, "details": "Logged in from 192.168.1.1"},
                {"type": "order", "user": "customer@example.com", "timestamp": .now, "details": "Placed order #1234"},
                {"type": "upload", "user": "user@example.com", "timestamp": .now, "details": "Uploaded document.pdf", "fileSize": 2048576}
            ]>

            <div class="activity-list" role="feed" aria-label="Recent activity feed">
                <#list activities as activity>
                    <article class="activity-item" role="article">
                        <div class="activity-header">
                            <span class="activity-type"><@statusBadge value=activity.type /></span>
                            <span class="activity-user">${activity.user?html}</span>
                            <time datetime="${activity.timestamp?string('yyyy-MM-dd HH:mm:ss')}" class="activity-time">
                                ${timeAgo(activity.timestamp)}
                            </time>
                        </div>
                        <div class="activity-details">
                            ${activity.details?html}
                            <#if activity.fileSize??>
                                <span class="file-size">(${formatFileSize(activity.fileSize)})</span>
                            </#if>
                        </div>
                    </article>
                    <#if !activity?is_last>
                        <hr aria-hidden="true">
                    </#if>
                </#list>
            </div>
        </section>

        <#-- Nested Data Structure Example -->
        <section aria-labelledby="categories-heading">
            <h2 id="categories-heading">Product Categories</h2>

            <#assign categories = {
                "Electronics": {
                    "items": ["Laptop", "Smartphone", "Tablet"],
                    "count": 45,
                    "subcategories": {
                        "Computers": ["Desktop", "Laptop", "Server"],
                        "Mobile": ["Phone", "Tablet", "Accessories"]
                    }
                },
                "Clothing": {
                    "items": ["Shirt", "Pants", "Jacket"],
                    "count": 128,
                    "subcategories": {
                        "Men": ["Shirts", "Pants", "Shoes"],
                        "Women": ["Dresses", "Skirts", "Accessories"]
                    }
                },
                "Books": {
                    "items": ["Fiction", "Non-Fiction", "Technical"],
                    "count": 89,
                    "subcategories": {
                        "Fiction": ["Mystery", "Romance", "Sci-Fi"],
                        "Reference": ["Encyclopedia", "Dictionary", "Atlas"]
                    }
                }
            }>

            <div class="categories-list">
                <#list categories as categoryName, categoryData>
                    <div class="category-group">
                        <h3>
                            ${categoryName?html}
                            <span class="item-count" aria-label="${categoryData.count} items">(${categoryData.count})</span>
                        </h3>

                        <#-- Main items -->
                        <ul class="main-items">
                            <#list categoryData.items as item>
                                <li>${item?html}</li>
                            </#list>
                        </ul>

                        <#-- Subcategories -->
                        <#if categoryData.subcategories?has_content>
                            <details>
                                <summary>View Subcategories (${categoryData.subcategories?size})</summary>
                                <div class="subcategories">
                                    <#list categoryData.subcategories as subName, subItems>
                                        <div class="subcategory">
                                            <h4>${subName?html}</h4>
                                            <ul>
                                                <#list subItems as subItem>
                                                    <li>${subItem?html}</li>
                                                </#list>
                                            </ul>
                                        </div>
                                    </#list>
                                </div>
                            </details>
                        </#if>
                    </div>
                </#list>
            </div>
        </section>

        <#-- Debug Panel (conditional) -->
        <#if debugMode>
            <section aria-labelledby="debug-heading" class="debug-panel">
                <h2 id="debug-heading">Debug Information</h2>
                <dl>
                    <dt>Template Version:</dt>
                    <dd>${.version}</dd>

                    <dt>Current Time:</dt>
                    <dd>${.now?string('yyyy-MM-dd HH:mm:ss')}</dd>

                    <dt>Locale:</dt>
                    <dd>${.locale}</dd>

                    <dt>Number Format:</dt>
                    <dd>${.number_format}</dd>

                    <dt>Variables in Scope:</dt>
                    <dd>
                        <#attempt>
                            <ul>
                                <#-- Note: In real scenarios, you'd pass specific debug data -->
                                <li>pageTitle: ${pageTitle}</li>
                                <li>currentYear: ${currentYear}</li>
                                <li>metrics count: ${metrics?size}</li>
                                <li>categories count: ${categories?size}</li>
                            </ul>
                        <#recover>
                            <p>Unable to display debug information</p>
                        </#attempt>
                    </dd>
                </dl>
            </section>
        </#if>
    </main>

    <footer role="contentinfo">
        <p>&copy; ${currentYear} ${appName!"Dashboard"}. All rights reserved.</p>
        <p>
            Generated at: <time datetime="${.now?string('yyyy-MM-dd HH:mm:ss')}">${.now?string('medium')}</time>
        </p>
    </footer>

    <#-- Example of noparse for JavaScript -->
    <script>
        <#noparse>
        // This JavaScript code won't be processed by FreeMarker
        const config = {
            apiUrl: '/api/v1',
            timeout: 5000,
            retries: 3
        };

        document.addEventListener('DOMContentLoaded', function() {
            console.log('Dashboard loaded');
            initializeCharts();
        });
        </#noparse>
    </script>
</body>
</html>

