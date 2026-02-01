<#-- user-avatar-upload.ftlh: Avatar upload with accessibility issues -->
<#include "../_header.ftlh">
<h3>Upload Avatar</h3>
<form>
  <input type="file" name="avatar">
  <button>Upload</button>
</form>
<#include "../_footer.ftlh">
<!-- Accessibility issues: file input not labeled, button not descriptive, improper heading order -->
