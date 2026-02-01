<#-- settings-team.ftlh: Team management page with accessibility issues -->
<#include "../_header.ftlh">
<h3>Team</h3>
<ul>
  <#list team as member>
    <li>${member.name}</li>
  </#list>
</ul>
<button>Add Member</button>
<#include "../_footer.ftlh">
<!-- Accessibility issues: button not descriptive, list items not interactive, improper heading order -->
