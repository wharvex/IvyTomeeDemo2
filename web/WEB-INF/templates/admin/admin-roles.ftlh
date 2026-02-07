
<#include "../_header.ftlh">
<h2>Roles</h2>
<ul>
  <#list roles as role>
    <li>${role.name}</li>
  </#list>
</ul>
<button>Add</button>
<#include "../_footer.ftlh">

