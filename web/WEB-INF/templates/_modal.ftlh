<#-- _modal.ftlh: Modal partial with accessibility issues -->
<div class="modal">
  <div class="modal-content">
    <#if title??>
      <h2>${title}</h2>
    </#if>
    <div>${content}</div>
    <button>Close</button>
  </div>
</div>
<!-- Accessibility issues: modal not focus-trapped, button not descriptive -->
