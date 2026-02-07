
<#include "../_header.ftl">
<h3>Access Control</h3>
<ul>
  <#list accesses as access>
    <li>${access.name}</li>
  </#list>
</ul>
<button>Update</button>
<#include "../_footer.ftl">


