---
name: wcag_1_4_13_AA
description: Make hover/focus content dismissible and persistent.
---

**Attachment Instructions**
Expect an attachment containing links to the relevant FTL files that need editing. Review the linked FTL files for content that appears on hover or focus (tooltips, submenus, popups) and ensure there are mechanisms to dismiss, and that content stays visible while hovered/focused. If attachments are not present, ask for them before proceeding.

**Brief Description**
Additional content triggered by hover or focus must be dismissible, hoverable, and persistent per the criterion.

**Code Examples**
Non-compliant example:
```ftl
<div class="tooltip-trigger" onmouseover="show()">Hover me</div>
<div class="tooltip">Info</div>
<!-- tooltip disappears as soon as mouse moves over tooltip -->
```
Compliant example:
```ftl
<button aria-describedby="tip1" id="tip-trigger">More info</button>
<div id="tip1" role="tooltip">
  <p>Details</p>
  <button class="dismiss">Close</button>
</div>
<!-- Ensure tooltip remains visible on hover and has a dismiss control -->
```

**Caveats**
- No changes unrelated to the specific Success Criterion should be made.
- No file other than the FTL files linked in the attached document should be edited.
- If a page seems to already meet the requirements of the Success Criterion, no changes should be made to that page.
- Changes to page functionality should be avoided unless absolutely necessary to meet the requirements of the Success Criterion.
- Never change the value of a "name" attribute in a form control, as these are used in the Java code. The page will break if these are changed.
- Some success criteria cannot be fully met via changes to the FTL files alone. In these cases, make the preparatory FTL changes and include comments noting further work needed to fully meet the requirement.
