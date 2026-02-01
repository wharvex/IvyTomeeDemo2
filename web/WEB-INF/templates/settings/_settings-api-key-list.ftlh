<#-- _settings-api-key-list.ftlh: API key list partial with accessibility issues -->
<ul>
  <#list apiKeys as key>
    <li>${key.value}</li>
  </#list>
</ul>
<!-- Accessibility issues: list items not interactive -->
