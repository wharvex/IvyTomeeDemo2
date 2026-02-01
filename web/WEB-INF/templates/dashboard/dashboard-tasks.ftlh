<#-- dashboard-tasks.ftlh: User tasks overview with accessibility issues -->
<#include "../_header.ftlh">
<h2>Tasks</h2>
<ul>
  <#list tasks as task>
    <li>${task.name}</li>
  </#list>
</ul>
<button>Complete</button>
<#include "../_footer.ftlh">
<!-- Accessibility issues: button not descriptive, list items not interactive, improper heading order -->
