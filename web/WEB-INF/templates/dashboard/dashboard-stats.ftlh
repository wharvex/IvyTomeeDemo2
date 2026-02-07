
<#include "../_header.ftlh">
<h2>Statistics</h2>
<div>
  <#list stats as stat>
    <div>${stat.label}: ${stat.value}</div>
  </#list>
</div>
<#include "../_footer.ftlh">

