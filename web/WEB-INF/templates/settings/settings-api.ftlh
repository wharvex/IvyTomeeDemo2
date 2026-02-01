<#-- settings-api.ftlh: API keys/settings page with accessibility issues -->
<#include "../_header.ftlh">
<h3>API Keys</h3>
<ul>
  <#list apiKeys as key>
    <li>${key.value}</li>
  </#list>
</ul>
<button>Generate</button>
<#include "../_footer.ftlh">
<!-- Accessibility issues: button not descriptive, list items not interactive, improper heading order -->
