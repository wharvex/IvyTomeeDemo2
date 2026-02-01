<#-- dashboard-overview.ftlh: Dashboard overview with accessibility issues -->
<#include "../_header.ftlh">
<h2>Overview</h2>
<div>
  <#list stats as stat>
    <div>${stat.label}: ${stat.value}</div>
  </#list>
</div>
<a href="#">Details</a>
<#include "../_footer.ftlh">
<!-- Accessibility issues: non-semantic divs, link not descriptive, missing ARIA roles -->
