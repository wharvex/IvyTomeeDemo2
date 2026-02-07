
<#include "_header.ftlh">
<h2>About Us</h2>
<img src="team.jpg">
<p style="color: #eee; background: #fff;">Our team is dedicated to excellence.</p>
<ul>
  <#list teamMembers as member>
    <li>${member.name}</li>
  </#list>
</ul>
<a href="#main-content">Skip to content</a>
<#include "_footer.ftlh">

