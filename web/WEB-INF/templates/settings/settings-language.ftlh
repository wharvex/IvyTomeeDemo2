
<#include "../_header.ftlh">
<h3>Language</h3>
<ul>
  <#list languages as lang>
    <li>${lang.name}</li>
  </#list>
</ul>
<button>Set</button>
<#include "../_footer.ftlh">

