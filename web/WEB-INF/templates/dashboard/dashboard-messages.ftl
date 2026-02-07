
<#include "../_header.ftl">
<h3>Messages</h3>
<ul>
  <#list messages as message>
    <li>${message.text}</li>
  </#list>
</ul>
<#include "../_footer.ftl">


