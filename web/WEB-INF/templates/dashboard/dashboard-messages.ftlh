<#-- dashboard-messages.ftlh: Dashboard messages with accessibility issues -->
<#include "../_header.ftlh">
<h3>Messages</h3>
<ul>
  <#list messages as message>
    <li>${message.text}</li>
  </#list>
</ul>
<#include "../_footer.ftlh">
<!-- Accessibility issues: improper heading order, no ARIA live region, messages not dismissible -->
