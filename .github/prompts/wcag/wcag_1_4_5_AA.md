---
name: wcag_1_4_5_AA
description: Use real text instead of images of text when possible.
---

**Attachment Instructions**
Expect an attachment containing links to the relevant FTL files that need editing. Review the linked FTL files for images used purely to display text and replace with true text where possible or add accessible alternatives. If attachments are not present, ask for them before proceeding.

**Brief Description**
Where technologies permit, text should be used instead of images of text unless the presentation is essential or customizable.

**Code Examples**
Non-compliant example:
```ftl
<img src="/images/heading.png" alt="Welcome" />
```
Compliant example:
```ftl
<h1 class="brand-heading">Welcome</h1>
```

**Caveats**
- No changes unrelated to the specific Success Criterion should be made.
- No file other than the FTL files linked in the attached document should be edited.
- If a page seems to already meet the requirements of the Success Criterion, no changes should be made to that page.
- Changes to page functionality should be avoided unless absolutely necessary to meet the requirements of the Success Criterion.
- Never change the value of a "name" attribute in a form control, as these are used in the Java code. The page will break if these are changed.
- Some success criteria cannot be fully met via changes to the FTL files alone. In these cases, make the preparatory FTL changes and include comments noting further work needed to fully meet the requirement.
