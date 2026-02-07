
<#include "../_header.ftl">
<h3>Billing</h3>
<ul>
  <#list bills as bill>
    <li>${bill.amount}</li>
  </#list>
</ul>
<button>Pay</button>
<#include "../_footer.ftl">


