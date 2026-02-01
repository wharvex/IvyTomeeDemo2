<#-- _alerts.ftlh: Alerts partial with accessibility issues -->
<div>
  <#list alerts as alert>
    <div>${alert.message}</div>
  </#list>
</div>
<!-- Accessibility issues: no ARIA live region, alerts not dismissible -->
