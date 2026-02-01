<#-- _admin-user-list.ftlh: Admin user list partial with accessibility issues -->
<ul>
  <#list users as user>
    <li>${user.name}</li>
  </#list>
</ul>
<!-- Accessibility issues: list items not interactive -->
