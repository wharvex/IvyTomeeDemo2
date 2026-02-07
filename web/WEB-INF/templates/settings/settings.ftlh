
<#include "../_header.ftlh">
<h2>Settings</h2>
<ul>
  <#list settings as setting>
    <li>${setting.name}</li>
  </#list>
</ul>
<#include "../_footer.ftlh">

