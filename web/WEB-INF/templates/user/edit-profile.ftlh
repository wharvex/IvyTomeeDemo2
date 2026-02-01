<#-- edit-profile.ftlh: Edit profile with accessibility issues -->
<#include "../_header.ftlh">
<h3>Edit Profile</h3>
<form>
  <input type="text" name="name" value="${user.name}">
  <input type="email" name="email" value="${user.email}">
  <button>Save</button>
</form>
<#include "../_footer.ftlh">
<!-- Accessibility issues: form fields not labeled, improper heading order, button not descriptive -->
