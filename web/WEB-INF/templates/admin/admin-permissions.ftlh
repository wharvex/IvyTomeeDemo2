
<#include "../_header.ftlh">
<h2>Permissions</h2>
<ul>
  <#list permissions as permission>
    <li>${permission.name}</li>
  </#list>
</ul>
<button>Update</button>
<#include "../_footer.ftlh">

