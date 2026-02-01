<#-- settings-preferences.ftlh: User preferences page with accessibility issues -->
<#include "../_header.ftlh">
<h3>Preferences</h3>
<form>
  <input type="checkbox" name="darkMode"> Dark Mode
  <input type="checkbox" name="betaFeatures"> Beta Features
  <button>Save</button>
</form>
<#include "../_footer.ftlh">
<!-- Accessibility issues: checkboxes not labeled, button not descriptive, improper heading order -->
