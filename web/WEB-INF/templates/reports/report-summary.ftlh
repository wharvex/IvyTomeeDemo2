<#-- report-summary.ftlh: Report summary partial with accessibility issues -->
<#include "../_header.ftlh">
<h3>Summary</h3>
<div>
  <#list summaries as summary>
    <div>${summary.text}</div>
  </#list>
</div>
<#include "../_footer.ftlh">
<!-- Accessibility issues: non-semantic divs, missing ARIA roles, improper heading order -->
