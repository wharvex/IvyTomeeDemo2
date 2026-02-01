<#-- register.ftlh: User registration with accessibility issues -->
<#include "../_header.ftlh">
<h2>Register</h2>
<form>
  <input type="text" name="username">
  <input type="email" name="email">
  <input type="password" name="password">
  <button>Sign Up</button>
</form>
<#include "../_footer.ftlh">
<!-- Accessibility issues: form fields not labeled, button not descriptive, no instructions for screen readers -->
