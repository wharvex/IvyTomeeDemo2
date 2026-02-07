
<#include "../_header.ftl">
<h2>Tasks</h2>
<ul>
  <#list tasks as task>
    <li>${task.name}</li>
  </#list>
</ul>
<button>Complete</button>
<#include "../_footer.ftl">


