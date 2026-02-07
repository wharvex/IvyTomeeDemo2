
<#include "../_header.ftl">
<h2>Audit Trail</h2>
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
<#include "../_footer.ftl">


