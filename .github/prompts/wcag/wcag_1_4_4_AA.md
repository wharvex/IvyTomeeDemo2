---
name: wcag_1_4_4_AA
description: Allow text to be resized without loss of content.
---

**Attachment Instructions**
Expect an attachment containing links to the relevant FTL files that need editing. Review the linked FTL files for hard-coded text sizes and update markup (e.g., remove px-only sizing or add comments) so text can scale to 200% without loss. If attachments are not present, ask for them before proceeding.

**Brief Description**
Text (except captions and images of text) must be resizable up to 200% without loss of content or functionality.

**Code Examples**
Non-compliant example:
```ftl
<p style="font-size:12px">Small fixed text</p>
```
Compliant example:
```ftl
<p class="resizable-text">Paragraph text</p>
<!-- Add comment: prefer relative units (em/rem) in CSS to support resizing -->
```

**Caveats**
- No changes unrelated to the specific Success Criterion should be made.
- No file other than the FTL files linked in the attached document should be edited.
- If a page seems to already meet the requirements of the Success Criterion, no changes should be made to that page.
- Changes to page functionality should be avoided unless absolutely necessary to meet the requirements of the Success Criterion.
- Never change the value of a "name" attribute in a form control, as these are used in the Java code. The page will break if these are changed.
- Some success criteria cannot be fully met via changes to the FTL files alone. In these cases, make the preparatory FTL changes and include comments noting further work needed to fully meet the requirement.
