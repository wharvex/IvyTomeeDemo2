<#-- reports.ftlh: Reports main page with accessibility issues -->
<#include "../_header.ftlh">
<h1>Reports</h1>
<div>
  <#list reports as report>
    <div>${report.title}</div>
  </#list>
</div>
<a href="/export">Export</a>
<#include "../_footer.ftlh">
<!-- Accessibility issues: non-semantic divs, link not descriptive, missing alt text for icons -->
