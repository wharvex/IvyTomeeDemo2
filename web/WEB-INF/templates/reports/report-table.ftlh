
<#include "../_header.ftlh">
<h3>Data Table</h3>
<table>
  <tr><th>Column 1</th><th>Column 2</th></tr>
  <#list rows as row>
    <tr>
      <td>${row.col1}</td>
      <td>${row.col2}</td>
    </tr>
  </#list>
</table>
<#include "../_footer.ftlh">

