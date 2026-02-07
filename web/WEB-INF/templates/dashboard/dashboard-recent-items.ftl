
<#include "../_header.ftl">
<h3>Recent Items</h3>
<ul>
  <#list items as item>
    <li>${item.name}</li>
  </#list>
</ul>
<#include "../_footer.ftl">


