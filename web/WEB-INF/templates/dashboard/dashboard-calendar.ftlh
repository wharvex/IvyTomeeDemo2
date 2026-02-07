
<#include "../_header.ftlh">
<h3>Calendar</h3>
<div>
  <#list days as day>
    <div>${day.label}</div>
  </#list>
</div>
<#include "../_footer.ftlh">

