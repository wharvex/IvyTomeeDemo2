<#-- _pagination.ftlh: Pagination partial with accessibility issues -->
<nav>
  <ul>
    <#list pages as page>
      <li><a href="${page.url}">${page.label}</a></li>
    </#list>
  </ul>
</nav>
<!-- Accessibility issues: missing ARIA labels, links not descriptive -->
