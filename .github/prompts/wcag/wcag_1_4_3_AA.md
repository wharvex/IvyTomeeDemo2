---
name: wcag_1_4_3_AA
description: Ensure sufficient contrast for text and images of text.
---

**Attachment Instructions**
Expect an attachment containing links to the relevant FTL files that need editing. Review linked FTL files for text and image-of-text with low contrast and add classes, ARIA cues or notes for CSS fixes. If attachments are not present, ask for them before proceeding.

**Brief Description**
Text and images of text must meet minimum contrast ratios so they are readable by users with low vision.

**Code Examples**
Non-compliant example:
```ftl
<p style="color:#777; background:#fff">Low contrast text</p>
```
Compliant example:
```ftl
<p class="text-high-contrast">High contrast text</p>
<!-- Add comment: update .text-high-contrast color in CSS to meet contrast ratio -->
```

**Caveats**
- No changes unrelated to the specific Success Criterion should be made.
- No file other than the FTL files linked in the attached document should be edited.
- If a page seems to already meet the requirements of the Success Criterion, no changes should be made to that page.
- Changes to page functionality should be avoided unless absolutely necessary to meet the requirements of the Success Criterion.
- Never change the value of a "name" attribute in a form control, as these are used in the Java code. The page will break if these are changed.
- Some success criteria cannot be fully met via changes to the FTL files alone. In these cases, make the preparatory FTL changes and include comments noting further work needed to fully meet the requirement.
