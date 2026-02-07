
<#include "../_header.ftlh">
<h3>Recent Activity</h3>
<ul>
  <#list activities as activity>
    <li>${activity.text}</li>
  </#list>
</ul>
<#include "../_footer.ftlh">

