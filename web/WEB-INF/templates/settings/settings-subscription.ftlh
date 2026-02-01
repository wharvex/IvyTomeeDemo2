<#-- settings-subscription.ftlh: Subscription management page with accessibility issues -->
<#include "../_header.ftlh">
<h3>Subscription</h3>
<ul>
  <#list subscriptions as sub>
    <li>${sub.name}</li>
  </#list>
</ul>
<button>Renew</button>
<#include "../_footer.ftlh">
<!-- Accessibility issues: button not descriptive, list items not interactive, improper heading order -->
