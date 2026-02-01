<#-- user-preferences.ftlh: User preferences with accessibility issues -->
<#include "../_header.ftlh">
<h3>Preferences</h3>
<form>
  <input type="checkbox" name="newsletter"> Subscribe to newsletter
  <input type="checkbox" name="updates"> Receive updates
  <button>Save</button>
</form>
<#include "../_footer.ftlh">
<!-- Accessibility issues: checkboxes not labeled, button not descriptive, improper heading order -->
