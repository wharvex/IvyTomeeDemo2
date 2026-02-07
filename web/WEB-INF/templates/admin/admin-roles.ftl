
<#include "../_header.ftl">
<h2>Roles</h2>
<ul>
  <#list roles as role>
    <li>${role.name}</li>
  </#list>
</ul>
<button>Add</button>
<#include "../_footer.ftl">


