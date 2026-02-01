<#-- dashboard.ftlh: Dashboard landing with accessibility issues -->
<#include "../_header.ftlh">
<h1>Dashboard</h1>
<div>
  <#list items as item>
    <div>${item.name}</div>
  </#list>
</div>
<a href="#">More</a>
<#include "../_footer.ftlh">
<!-- Accessibility issues: non-semantic divs, link not descriptive, missing ARIA roles -->
