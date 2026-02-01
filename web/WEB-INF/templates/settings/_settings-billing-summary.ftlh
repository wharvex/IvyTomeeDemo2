<#-- _settings-billing-summary.ftlh: Billing summary partial with accessibility issues -->
<div>
  <#list bills as bill>
    <div>${bill.amount}</div>
  </#list>
</div>
<!-- Accessibility issues: non-semantic divs, missing ARIA roles -->
