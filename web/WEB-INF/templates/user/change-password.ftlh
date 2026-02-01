<#-- change-password.ftlh: Change password with accessibility issues -->
<#include "../_header.ftlh">
<h2>Change Password</h2>
<form>
  <input type="password" name="oldPassword">
  <input type="password" name="newPassword">
  <button>Change</button>
</form>
<#include "../_footer.ftlh">
<!-- Accessibility issues: form fields not labeled, button not descriptive, no instructions for screen readers -->
