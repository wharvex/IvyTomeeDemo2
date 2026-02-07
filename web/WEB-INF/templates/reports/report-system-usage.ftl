
<#include "../_header.ftl">
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
<#include "../_footer.ftl">


