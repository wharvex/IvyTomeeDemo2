<#-- report-errors.ftlh: Error log report with accessibility issues -->
<#include "../_header.ftlh">
<h3>Error Log</h3>
<table>
  <tr><th>Time</th><th>Error</th></tr>
  <#list errors as error>
    <tr>
      <td>${error.time}</td>
      <td>${error.message}</td>
    </tr>
  </#list>
</table>
<button>Download</button>
<#include "../_footer.ftlh">
<!-- Accessibility issues: table missing captions, button not descriptive, improper heading order -->
