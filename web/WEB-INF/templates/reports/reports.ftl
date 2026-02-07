
<#include "../_header.ftl">
<h1>Reports</h1>
<div>
  <#list reports as report>
    <div>${report.title}</div>
  </#list>
</div>
<a href="/export">Export</a>
<#include "../_footer.ftl">


