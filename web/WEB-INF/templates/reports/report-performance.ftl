
<#include "../_header.ftl">
<h3>Performance Metrics</h3>
<table>
  <tr><th>Metric</th><th>Value</th></tr>
  <#list metrics as metric>
    <tr>
      <td>${metric.name}</td>
      <td>${metric.value}</td>
    </tr>
  </#list>
</table>
<button>Download</button>
<#include "../_footer.ftl">


