---
name: wcag_1_4_11_AA
description: Ensure non-text elements have sufficient contrast.
---

**Attachment Instructions**
Expect an attachment containing links to the relevant FTL files that need editing. Review the linked FTL files for UI components (icons, focus indicators, controls) with low contrast and add classes or ARIA attributes and comments for CSS fixes. If attachments are not present, ask for them before proceeding.

**Brief Description**
Visual information for user interface components and graphical objects must have a contrast ratio of at least 3:1 against adjacent colors.

**Code Examples**
Non-compliant example:
```ftl
<button style="border-color:#eee; background:#fff">Action</button>
```
Compliant example:
```ftl
<button class="btn-visible">Action</button>
<!-- Add comment: update .btn-visible border/background in CSS to meet 3:1 contrast -->
```

**Caveats**
- No changes unrelated to the specific Success Criterion should be made.
- No file other than the FTL files linked in the attached document should be edited.
- If a page seems to already meet the requirements of the Success Criterion, no changes should be made to that page.
- Changes to page functionality should be avoided unless absolutely necessary to meet the requirements of the Success Criterion.
- Never change the value of a "name" attribute in a form control, as these are used in the Java code. The page will break if these are changed.
- Some success criteria cannot be fully met via changes to the FTL files alone. In these cases, make the preparatory FTL changes and include comments noting further work needed to fully meet the requirement.
