
<#include "../_header.ftlh">
<h3>API Keys</h3>
<ul>
  <#list apiKeys as key>
    <li>${key.value}</li>
  </#list>
</ul>
<button>Generate</button>
<#include "../_footer.ftlh">

