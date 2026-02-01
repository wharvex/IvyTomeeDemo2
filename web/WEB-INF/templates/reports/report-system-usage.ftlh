<#-- report-system-usage.ftlh: System usage report with accessibility issues -->
<#include "../_header.ftlh">
<h2>System Usage Report</h2>
<table>
  <tr><th>User</th><th>Usage</th></tr>
  <#list usage as entry>
    <tr>
      <td>${entry.user}</td>
      <td>${entry.usage}</td>
    </tr>
  </#list>
</table>
<button>Export</button>
<#include "../_footer.ftlh">
<!-- Accessibility issues: table missing captions, button not descriptive, improper heading order -->
