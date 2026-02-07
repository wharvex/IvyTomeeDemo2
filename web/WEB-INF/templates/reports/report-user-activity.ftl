
<#include "../_header.ftl">
<h2>User Activity Report</h2>
<table>
  <tr><th>User</th><th>Activity</th></tr>
  <#list activities as activity>
    <tr>
      <td>${activity.user}</td>
      <td>${activity.action}</td>
    </tr>
  </#list>
</table>
<button>Download</button>
<#include "../_footer.ftl">


