---
name: wcag_1_1_1_A
description: Provide text alternatives for non-text content.
---

**Attachment Instructions**
Expect an attachment containing links to the relevant FTL files that need editing. Review the attached document and the linked FTL files to identify missing or incorrect text alternatives and implement fixes. If attachments are not present, ask for them before proceeding.

**Brief Description**
Images, controls, and other non-text content must have text alternatives that serve the same purpose.

**Code Examples**
Non-compliant example:
```ftl
<img src="/images/logo.png" />
```
Compliant example:
```ftl
<img src="/images/logo.png" alt="Acme Widgets logo" />
```

**Caveats**
- No changes unrelated to the specific Success Criterion should be made.
- No file other than the FTL files linked in the attached document should be edited.
- If a page seems to already meet the requirements of the Success Criterion, no changes should be made to that page.
- Changes to page functionality should be avoided unless absolutely necessary to meet the requirements of the Success Criterion.
- Never change the value of a "name" attribute in a form control, as these are used in the Java code. The page will break if these are changed.
- Some success criteria cannot be fully met via changes to the FTL files alone. In these cases, make the preparatory FTL changes and include comments noting further work needed to fully meet the requirement.
