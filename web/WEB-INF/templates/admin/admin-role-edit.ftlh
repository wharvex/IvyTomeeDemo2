<#-- admin-role-edit.ftlh: Edit role with accessibility issues -->
<#include "../_header.ftlh">
<h3>Edit Role</h3>
<form>
  <input type="text" name="roleName" value="${role.name}">
  <button>Save</button>
</form>
<#include "../_footer.ftlh">
<!-- Accessibility issues: form field not labeled, button not descriptive, improper heading order -->
