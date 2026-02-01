<#-- _settings-team-list.ftlh: Team list partial with accessibility issues -->
<ul>
  <#list team as member>
    <li>${member.name}</li>
  </#list>
</ul>
<!-- Accessibility issues: list items not interactive -->
