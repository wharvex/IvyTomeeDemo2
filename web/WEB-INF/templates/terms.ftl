
<#include "_header.ftl">
<h2>Terms and Conditions</h2>
<p style="color: #eee; background: #fff;">Please read carefully.</p>
<ul>
  <#list terms as term>
    <li>${term.text}</li>
  </#list>
</ul>
<#include "_footer.ftl">


