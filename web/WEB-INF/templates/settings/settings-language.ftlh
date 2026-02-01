<#-- settings-language.ftlh: Language selection page with accessibility issues -->
<#include "../_header.ftlh">
<h3>Language</h3>
<ul>
  <#list languages as lang>
    <li>${lang.name}</li>
  </#list>
</ul>
<button>Set</button>
<#include "../_footer.ftlh">
<!-- Accessibility issues: button not descriptive, list items not interactive, improper heading order -->
