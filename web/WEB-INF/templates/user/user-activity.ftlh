<#-- user-activity.ftlh: User activity log with accessibility issues -->
<#include "../_header.ftlh">
<h3>Activity Log</h3>
<ul>
  <#list activities as activity>
    <li>${activity.text}</li>
  </#list>
</ul>
<#include "../_footer.ftlh">
<!-- Accessibility issues: improper heading order, no ARIA live region, list items not interactive -->
