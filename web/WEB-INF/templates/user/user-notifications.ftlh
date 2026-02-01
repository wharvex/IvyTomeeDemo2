<#-- user-notifications.ftlh: User notifications with accessibility issues -->
<#include "../_header.ftlh">
<h3>Notifications</h3>
<ul>
  <#list notifications as notification>
    <li>${notification.text}</li>
  </#list>
</ul>
<#include "../_footer.ftlh">
<!-- Accessibility issues: improper heading order, no ARIA live region, notifications not dismissible -->
