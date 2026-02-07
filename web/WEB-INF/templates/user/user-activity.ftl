
<#include "../_header.ftl">
<h3>Activity Log</h3>
<ul>
  <#list activities as activity>
    <li>${activity.text}</li>
  </#list>
</ul>
<#include "../_footer.ftl">


