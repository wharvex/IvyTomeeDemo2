<#-- admin-users.ftlh: User management with accessibility issues -->
<#include "../_header.ftlh">
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
<#include "../_footer.ftlh">
<!-- Accessibility issues: table missing scope attributes, button not labeled for screen readers, improper heading order -->
