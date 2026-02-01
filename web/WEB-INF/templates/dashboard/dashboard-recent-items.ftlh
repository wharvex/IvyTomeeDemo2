<#-- dashboard-recent-items.ftlh: Recently accessed items with accessibility issues -->
<#include "../_header.ftlh">
<h3>Recent Items</h3>
<ul>
  <#list items as item>
    <li>${item.name}</li>
  </#list>
</ul>
<#include "../_footer.ftlh">
<!-- Accessibility issues: list items not interactive, improper heading order -->
