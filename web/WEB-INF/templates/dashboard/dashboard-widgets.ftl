
<#include "../_header.ftl">
<h2>Widgets</h2>
<ul>
  <#list widgets as widget>
    <li>${widget.name}</li>
  </#list>
</ul>
<button>Go</button>
<#include "../_footer.ftl">


