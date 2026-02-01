<#-- settings-billing.ftlh: Billing and payments page with accessibility issues -->
<#include "../_header.ftlh">
<h3>Billing</h3>
<ul>
  <#list bills as bill>
    <li>${bill.amount}</li>
  </#list>
</ul>
<button>Pay</button>
<#include "../_footer.ftlh">
<!-- Accessibility issues: button not descriptive, list items not interactive, improper heading order -->
