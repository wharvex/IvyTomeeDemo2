
<#include "../_header.ftl">
<h2>Statistics</h2>
<div>
  <#list stats as stat>
    <div>${stat.label}: ${stat.value}</div>
  </#list>
</div>
<#include "../_footer.ftl">


