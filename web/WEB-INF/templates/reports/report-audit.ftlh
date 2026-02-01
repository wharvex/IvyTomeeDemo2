<#-- report-audit.ftlh: Audit report with accessibility issues -->
<#include "../_header.ftlh">
<h2>Audit Report</h2>
<table>
  <tr><th>User</th><th>Action</th></tr>
  <#list audits as audit>
    <tr>
      <td>${audit.user}</td>
      <td>${audit.action}</td>
    </tr>
  </#list>
</table>
<button>Export</button>
<#include "../_footer.ftlh">
<!-- Accessibility issues: table missing captions, button not descriptive, improper heading order -->
