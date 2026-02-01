<#-- _form-errors.ftlh: Form errors partial with accessibility issues -->
<#if errors?? && errors?size gt 0>
  <ul>
    <#list errors as error>
      <li>${error}</li>
    </#list>
  </ul>
</#if>
<!-- Accessibility issues: errors not associated with fields, no ARIA live region -->
