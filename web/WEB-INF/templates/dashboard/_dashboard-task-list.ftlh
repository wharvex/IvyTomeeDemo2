<#-- _dashboard-task-list.ftlh: Dashboard task list partial with accessibility issues -->
<ul>
  <#list tasks as task>
    <li>${task.name}</li>
  </#list>
</ul>
<!-- Accessibility issues: list items not interactive -->
