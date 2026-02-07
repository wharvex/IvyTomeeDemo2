
<#include "../_header.ftl">
<h3>API Keys</h3>
<ul>
  <#list apiKeys as key>
    <li>${key.value}</li>
  </#list>
</ul>
<button>Generate</button>
<#include "../_footer.ftl">


