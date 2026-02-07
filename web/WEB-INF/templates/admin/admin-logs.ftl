
<#include "../_header.ftl">
<h2>System Logs</h2>
<table>
  <tr><th>Time</th><th>Event</th></tr>
  <#list logs as log>
    <tr>
      <td>${log.time}</td>
      <td>${log.event}</td>
    </tr>
  </#list>
</table>
<button>Export</button>
<#include "../_footer.ftl">


