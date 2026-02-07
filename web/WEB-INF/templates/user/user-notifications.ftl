
<#include "../_header.ftl">
<h3>Notifications</h3>
<ul>
  <#list notifications as notification>
    <li>${notification.text}</li>
  </#list>
</ul>
<#include "../_footer.ftl">


