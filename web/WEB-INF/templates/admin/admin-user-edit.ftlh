
<#include "../_header.ftlh">
<h3>Edit User</h3>
<form>
  <input type="text" name="username" value="${user.username}">
  <input type="email" name="email" value="${user.email}">
  <button>Update</button>
</form>
<#include "../_footer.ftlh">

