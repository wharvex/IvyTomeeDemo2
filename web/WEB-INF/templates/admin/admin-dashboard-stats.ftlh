
<#include "../_header.ftlh">
<h3>Statistics</h3>
<div>
  <#list stats as stat>
    <div>${stat.label}: ${stat.value}</div>
  </#list>
</div>
<#include "../_footer.ftlh">

