
<#include "../_header.ftlh">
<h3>Quick Links</h3>
<ul>
  <#list links as link>
    <li><a href="${link.url}">${link.label}</a></li>
  </#list>
</ul>
<#include "../_footer.ftlh">

