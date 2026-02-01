<#-- contact.ftlh: Contact page with accessibility issues -->
<#include "_header.ftlh">
<h2>Contact Us</h2>
<form>
  <input type="text" name="name">
  <input type="email" name="email">
  <textarea name="message"></textarea>
  <button>Send</button>
</form>
<p style="color: #ccc; background: #fff;">We will respond soon.</p>
<#include "_footer.ftlh">
<!-- Accessibility issues: form fields not labeled, low color contrast, button not descriptive -->
