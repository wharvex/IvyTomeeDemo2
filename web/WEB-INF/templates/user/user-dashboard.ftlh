<#-- user-dashboard.ftlh: User dashboard with accessibility issues -->
<#include "../_header.ftlh">
<h2>Dashboard</h2>
<div>
  <#list widgets as widget>
    <div>${widget.name}</div>
  </#list>
</div>
<#include "../_footer.ftlh">
<!-- Accessibility issues: non-semantic divs, missing ARIA roles, improper heading order -->
