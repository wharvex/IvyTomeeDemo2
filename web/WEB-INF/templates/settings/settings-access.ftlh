<#-- settings-access.ftlh: Access control settings with accessibility issues -->
<#include "../_header.ftlh">
<h3>Access Control</h3>
<ul>
  <#list accesses as access>
    <li>${access.name}</li>
  </#list>
</ul>
<button>Update</button>
<#include "../_footer.ftlh">
<!-- Accessibility issues: button not descriptive, list items not interactive, improper heading order -->
