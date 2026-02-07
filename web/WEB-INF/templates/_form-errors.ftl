
<#if errors?? && errors?size gt 0>
  <ul>
    <#list errors as error>
      <li>${error}</li>
    </#list>
  </ul>
</#if>

