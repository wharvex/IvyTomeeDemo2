<#-- settings-integrations.ftlh: Integrations management page with accessibility issues -->
<#include "../_header.ftlh">
<h3>Integrations</h3>
<ul>
  <#list integrations as integration>
    <li>${integration.name}</li>
  </#list>
</ul>
<button>Add</button>
<#include "../_footer.ftlh">
<!-- Accessibility issues: button not descriptive, list items not interactive, improper heading order -->
