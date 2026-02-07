
<#include "../_header.ftl">
<h3>Subscription</h3>
<ul>
  <#list subscriptions as sub>
    <li>${sub.name}</li>
  </#list>
</ul>
<button>Renew</button>
<#include "../_footer.ftl">


