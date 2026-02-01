<#-- settings-security.ftlh: Security settings page with accessibility issues -->
<#include "../_header.ftlh">
<h3>Security Settings</h3>
<form>
  <input type="password" name="currentPassword">
  <input type="password" name="newPassword">
  <button>Update</button>
</form>
<#include "../_footer.ftlh">
<!-- Accessibility issues: form fields not labeled, button not descriptive, improper heading order -->
