
<#include "../_header.ftl">
<h2>User Management</h2>
<table>
  <tr><th>Name</th><th>Email</th></tr>
  <#list users as user>
    <tr>
      <td>${user.name}</td>
      <td>${user.email}</td>
    </tr>
  </#list>
</table>
<button>Delete Selected</button>
<#include "../_footer.ftl">


