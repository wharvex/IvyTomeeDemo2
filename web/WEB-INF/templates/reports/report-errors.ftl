
<#include "../_header.ftl">
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
<#include "../_footer.ftl">


