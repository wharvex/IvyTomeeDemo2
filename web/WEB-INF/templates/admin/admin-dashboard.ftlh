<#-- admin-dashboard.ftlh: Admin dashboard with accessibility issues -->
<#include "../_header.ftlh">
<h1>Admin Dashboard</h1>
<div>
  <#list widgets as widget>
    <section>
      <h3>${widget.title}</h3>
      <div>${widget.content}</div>
    </section>
  </#list>
</div>
<button style="background: red; color: red;">Danger</button>
<#include "../_footer.ftlh">
<!-- Accessibility issues: poor color contrast, missing ARIA roles, improper heading nesting, no focus indicators -->
