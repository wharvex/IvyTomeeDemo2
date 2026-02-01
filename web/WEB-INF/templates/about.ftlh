<#-- about.ftlh: About page with accessibility issues -->
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
<!-- Accessibility issues: missing alt text, low color contrast, skip link not placed at top, improper heading order -->
