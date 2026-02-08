---
name: wcag_2_1_2_A
description: Ensure no keyboard traps exist
---

**Attachment Instructions:**
Expect an attachment listing FTL files that manage focusable components and dialogs. Review the files and implement changes so keyboard focus can always move away from components. If attachments are missing, request them before editing.

**Brief description:**
Ensure that if keyboard focus can move to a component, it can also be moved away using only the keyboard.

**Code examples:**
- Code to look for (indicates failure):

```html
<div class="modal" tabindex="-1" onkeydown="...">...</div>
```

- Code changes to make (fix):

```html
<!-- Ensure dialog trap is removable and has keyboard escape -->
<div class="modal" role="dialog" aria-modal="true" tabindex="0">
  <button class="close" aria-label="Close" onclick="closeModal()">×</button>
</div>
<!-- Ensure focus is moved back to a predictable element after closing -->
```

**Caveats:**
- Do not make changes unrelated to this Success Criterion.
- Only edit the FTL files linked in the attached document.
- If a page already meets the criterion, do not change it.
- Avoid changing page functionality unless absolutely necessary to meet this Success Criterion.
- Never change the value of a `name` attribute in form controls.
- If full compliance requires non-FTL changes, prepare the FTL and add comments indicating needed future work.
