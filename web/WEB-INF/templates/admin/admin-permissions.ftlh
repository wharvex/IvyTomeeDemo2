<#-- admin-permissions.ftlh: Permissions management with accessibility issues -->
<#include "../_header.ftlh">
<h2>Permissions</h2>
<ul>
  <#list permissions as permission>
    <li>${permission.name}</li>
  </#list>
</ul>
<button>Update</button>
<#include "../_footer.ftlh">
<!-- Accessibility issues: button not descriptive, list items not interactive, improper heading order -->
