
<#include "../_header.ftlh">
<h2>Dashboard</h2>
<div>
  <#list widgets as widget>
    <div>${widget.name}</div>
  </#list>
</div>
<#include "../_footer.ftlh">

