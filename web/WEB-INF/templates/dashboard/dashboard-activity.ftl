
<#include "../_header.ftl">
<h3>Recent Activity</h3>
<ul>
  <#list activities as activity>
    <li>${activity.text}</li>
  </#list>
</ul>
<#include "../_footer.ftl">


