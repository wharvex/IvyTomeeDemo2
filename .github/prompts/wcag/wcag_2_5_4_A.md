---
name: wcag_2_5_4_A
description: Provide alternatives to motion-based actuation
---

**Attachment Instructions:**
Expect an attachment listing FTL files that trigger actions via device or user motion. Review and ensure equivalent UI controls are available and that motion-based actuation can be disabled, unless the motion is essential or uses an accessibility-supported interface. If attachments are missing, request them.

**Brief description:**
Functionality operable by device or user motion must also be operable via UI controls and able to be disabled to prevent accidental actuation.

**Code examples:**
- Code to look for (indicates failure):

```javascript
window.addEventListener('devicemotion', function(e){ if(e.acceleration.x > 12) triggerAction(); });
```

- Code changes to make (fix):

```html
<button id="trigger">Trigger action</button>
<label><input type="checkbox" id="motionAllowed"> Allow motion activation</label>
```

**Caveats:**
- Do not make changes unrelated to this Success Criterion.
- Only edit the FTL files linked in the attached document.
- If a page already meets the criterion, do not change it.
- Avoid changing page functionality unless absolutely necessary to meet this Success Criterion.
- Never change the value of a `name` attribute in form controls.
- If full compliance requires non-FTL changes, prepare the FTL and add comments indicating needed future work.
