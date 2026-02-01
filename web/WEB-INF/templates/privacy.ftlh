<#-- privacy.ftlh: Privacy policy with accessibility issues -->
<#include "_header.ftlh">
<h2>Privacy Policy</h2>
<p style="color: #ccc; background: #fff;">Your privacy is important to us.</p>
<ul>
  <#list policies as policy>
    <li>${policy.text}</li>
  </#list>
</ul>
<#include "_footer.ftlh">
<!-- Accessibility issues: low color contrast, improper heading order, list items not interactive -->
