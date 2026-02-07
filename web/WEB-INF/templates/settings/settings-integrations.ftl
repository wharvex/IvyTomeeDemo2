
<#include "../_header.ftl">
<h3>Integrations</h3>
<ul>
  <#list integrations as integration>
    <li>${integration.name}</li>
  </#list>
</ul>
<button>Add</button>
<#include "../_footer.ftl">


