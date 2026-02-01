<#-- report-export.ftlh: Export report options with accessibility issues -->
<#include "../_header.ftlh">
<h2>Export Options</h2>
<form>
  <input type="checkbox" name="includeCharts"> Include charts
  <input type="checkbox" name="includeTables"> Include tables
  <button>Export</button>
</form>
<#include "../_footer.ftlh">
<!-- Accessibility issues: checkboxes not labeled, button not descriptive, no instructions for screen readers -->
