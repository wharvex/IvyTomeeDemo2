
<#include "../_header.ftl">
<h3>Team</h3>
<ul>
  <#list team as member>
    <li>${member.name}</li>
  </#list>
</ul>
<button>Add Member</button>
<#include "../_footer.ftl">


