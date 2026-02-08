---
name: wcag_1_3_4_AA
description: Avoid restricting operation to a single orientation.
---

**Attachment Instructions**
Expect an attachment containing links to the relevant FTL files that need editing. Review the FTL files for layout or script assumptions that force portrait or landscape and add notes or markup to support orientation flexibility where possible. If attachments are not present, ask for them before proceeding.

**Brief Description**
Content must not require a specific display orientation unless essential to the content's function.

**Code Examples**
Non-compliant example:
```ftl
<div class="fixed-portrait">
  <!-- fixed-size layout that only works in portrait -->
</div>
```
Compliant example (prepare FTL for responsive layout):
```ftl
<div class="responsive-container">
  <h2>Title</h2>
  <p>Content flows naturally across orientations.</p>
</div>
<!-- Add comment: further CSS changes required in stylesheets for full support -->
```

**Caveats**
- No changes unrelated to the specific Success Criterion should be made.
- No file other than the FTL files linked in the attached document should be edited.
- If a page seems to already meet the requirements of the Success Criterion, no changes should be made to that page.
- Changes to page functionality should be avoided unless absolutely necessary to meet the requirements of the Success Criterion.
- Never change the value of a "name" attribute in a form control, as these are used in the Java code. The page will break if these are changed.
- Some success criteria cannot be fully met via changes to the FTL files alone. In these cases, make the preparatory FTL changes and include comments noting further work needed to fully meet the requirement.
