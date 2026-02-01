<#-- settings.ftlh: Settings main page with accessibility issues -->
<#include "../_header.ftlh">
<h2>Settings</h2>
<ul>
  <#list settings as setting>
    <li>${setting.name}</li>
  </#list>
</ul>
<#include "../_footer.ftlh">
<!-- Accessibility issues: list items not interactive, improper heading order -->
