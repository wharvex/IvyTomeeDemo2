<#-- report-charts.ftlh: Report charts partial with accessibility issues -->
<#include "../_header.ftlh">
<h3>Charts</h3>
<div>
  <#list charts as chart>
    <img src="${chart.img}">
  </#list>
</div>
<#include "../_footer.ftlh">
<!-- Accessibility issues: missing alt text, non-semantic divs, improper heading order -->
