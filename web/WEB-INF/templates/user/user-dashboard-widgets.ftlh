<#-- user-dashboard-widgets.ftlh: Dashboard widgets with accessibility issues -->
<#include "../_header.ftlh">
<h3>Widgets</h3>
<ul>
  <#list widgets as widget>
    <li>${widget.name}</li>
  </#list>
</ul>
<#include "../_footer.ftlh">
<!-- Accessibility issues: list items not interactive, improper heading order -->
