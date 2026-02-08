---
name: wcag_2_5_2_A
description: Ensure pointer cancellation behavior is safe
---

**Attachment Instructions:**
Expect an attachment listing FTL files that handle pointer-based actions. Review the linked FTL files and ensure actions can be aborted/undone or do not execute on down-event, unless essential. If attachments are missing, request them.

**Brief description:**
Pointer-based functions must avoid executing on down-event or provide abort/undo mechanisms unless completion on down-event is essential.

**Code examples:**
- Code to look for (indicates failure):

```html
<div onmousedown="purchase()">Buy now</div>
```

- Code changes to make (fix):

```html
<button onmousedown="" onclick="purchase()">Buy now</button>
<!-- or add a confirmation step or undo mechanism -->
```

**Caveats:**
- Do not make changes unrelated to this Success Criterion.
- Only edit the FTL files linked in the attached document.
- If a page already meets the criterion, do not change it.
- Avoid changing page functionality unless absolutely necessary to meet this Success Criterion.
- Never change the value of a `name` attribute in form controls.
- If full compliance requires non-FTL changes, prepare the FTL and add comments indicating needed future work.
