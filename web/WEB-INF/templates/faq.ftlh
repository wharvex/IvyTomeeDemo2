<#-- faq.ftlh: FAQ page with accessibility issues -->
<#include "_header.ftlh">
<h2>FAQ</h2>
<ul>
  <#list faqs as faq>
    <li><a href="#">${faq.question}</a></li>
  </#list>
</ul>
<p style="color: #eee; background: #fff;">Can't find your answer? Contact us.</p>
<#include "_footer.ftlh">
<!-- Accessibility issues: link not descriptive, low color contrast, improper heading order -->
