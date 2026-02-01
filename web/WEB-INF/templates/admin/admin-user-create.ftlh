<#-- admin-user-create.ftlh: Create user with accessibility issues -->
<#include "../_header.ftlh">
<h3>Create User</h3>
<form>
  <input type="text" name="username">
  <input type="email" name="email">
  <button>Create</button>
</form>
<#include "../_footer.ftlh">
<!-- Accessibility issues: form fields not labeled, button not descriptive, improper heading order -->
