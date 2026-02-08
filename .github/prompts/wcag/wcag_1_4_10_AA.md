---
name: wcag_1_4_10_AA
description: Prepare content to reflow without two-dimensional scrolling.
---

**Attachment Instructions**
Expect an attachment containing links to the relevant FTL files that need editing. Review the linked FTL files for fixed-width containers or markup that causes horizontal scrolling and modify markup or add comments to prepare for responsive CSS changes. If attachments are not present, ask for them before proceeding.

**Brief Description**
Content should reflow to avoid requiring two-dimensional scrolling at specified viewport sizes; prepare FTL for responsive behavior.

**Code Examples**
Non-compliant example:
```ftl
<div style="width:900px">Wide fixed container</div>
```
Compliant example (FTL prepared for CSS changes):
```ftl
<div class="responsive-container">Content that can wrap</div>
<!-- Comment: update CSS to use fluid layouts and media queries to avoid horizontal scrolling -->
```

**Caveats**
- No changes unrelated to the specific Success Criterion should be made.
- No file other than the FTL files linked in the attached document should be edited.
- If a page seems to already meet the requirements of the Success Criterion, no changes should be made to that page.
- Changes to page functionality should be avoided unless absolutely necessary to meet the requirements of the Success Criterion.
- Never change the value of a "name" attribute in a form control, as these are used in the Java code. The page will break if these are changed.
- Some success criteria cannot be fully met via changes to the FTL files alone. In these cases, make the preparatory FTL changes and include comments noting further work needed to fully meet the requirement.
