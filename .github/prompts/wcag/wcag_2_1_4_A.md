---
name: wcag_2_1_4_A
description: Manage character key shortcuts
---

**Attachment Instructions:**
Expect an attachment listing FTL files that implement keyboard shortcuts. Review the attachments and the linked FTL files; ensure shortcuts can be turned off, remapped to include non-printable keys, or are only active when component has focus. If attachments are missing, ask for them.

**Brief description:**
Character key shortcuts using only printable characters must be turn-offable, remappable to include non-printable keys, or active only when the component has focus.

**Code examples:**
- Code to look for (indicates failure):

```javascript
window.addEventListener('keypress', function(e){ if(e.key === 's') save(); });
```

- Code changes to make (fix):

```javascript
// Example: require Ctrl+S or provide a toggle to disable
window.addEventListener('keydown', function(e){ if((e.ctrlKey||e.metaKey) && e.key === 's') save(); });
// Or add a user preference toggle: <input type="checkbox" id="shortcutsOff">Disable shortcuts</input>
```

**Caveats:**
- Do not make changes unrelated to this Success Criterion.
- Only edit the FTL files linked in the attached document.
- If a page already meets the criterion, do not change it.
- Avoid changing page functionality unless absolutely necessary to meet this Success Criterion.
- Never change the value of a `name` attribute in form controls.
- If full compliance requires non-FTL changes, prepare the FTL and add comments indicating needed future work.
