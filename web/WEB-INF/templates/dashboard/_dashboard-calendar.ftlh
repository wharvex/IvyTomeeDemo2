<#-- _dashboard-calendar.ftlh: Dashboard calendar partial with accessibility issues -->
<div class="calendar">
  <#list days as day>
    <div>${day.label}</div>
  </#list>
</div>
<!-- Accessibility issues: non-semantic divs, missing ARIA roles -->
