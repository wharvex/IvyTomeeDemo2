---
name: wcag_2_1_1_A
description: Ensure all functionality is keyboard operable
---

**Attachment Instructions:**
Expect an attachment containing links to the FTL files that implement interactive UI. Review the attached document and the linked FTL files, identify where keyboard support is missing, and implement changes. If attachments are not provided, ask for them before proceeding.

**Brief description:**
All functionality must be operable through a keyboard interface without requiring specific timing of keystrokes.

**Code examples:**
- Code to look for (indicates failure):

```html
<div role="button" onclick="doAction()">Click me</div>
```

- Code changes to make (fix):

```html
<button type="button">Click me</button>
<!-- or -->
<div role="button" tabindex="0" onkeydown="if(event.key==='Enter'||event.key===' ') doAction();" onclick="doAction()">Click me</div>
```

**Caveats:**
- Do not make changes unrelated to this Success Criterion.
- Only edit the FTL files linked in the attached document.
- If a page already meets the criterion, do not change it.
- Avoid changing page functionality unless absolutely necessary to meet this Success Criterion.
- Never change the value of a `name` attribute in form controls.
- If full compliance requires non-FTL changes, prepare the FTL and add comments indicating needed future work.
