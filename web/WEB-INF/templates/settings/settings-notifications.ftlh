<#-- settings-notifications.ftlh: Notification settings page with accessibility issues -->
<#include "../_header.ftlh">
<h3>Notification Settings</h3>
<form>
  <input type="checkbox" name="emailNotifications"> Email
  <input type="checkbox" name="smsNotifications"> SMS
  <button>Save</button>
</form>
<#include "../_footer.ftlh">
<!-- Accessibility issues: checkboxes not labeled, button not descriptive, improper heading order -->
