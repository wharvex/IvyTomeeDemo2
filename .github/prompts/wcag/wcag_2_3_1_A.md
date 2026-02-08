---
name: wcag_2_3_1_A
description: Avoid flashing content causing seizures
---

**Attachment Instructions:**
Expect an attachment listing FTL files that present flashing or animated content. Review linked FTL files and ensure any flashing meets the three-flashes-or-below threshold or is removed/modified. If attachments are missing, request them.

**Brief description:**
Do not include content that flashes more than three times per second, or above defined flash thresholds.

**Code examples:**
- Code to look for (indicates failure):

```css
@keyframes flash { 0% { opacity: 0 } 50% { opacity: 1 } 100% { opacity: 0 } }
.flash { animation: flash 0.2s infinite; }
```

- Code changes to make (fix):

```css
/* Slow down animation or remove flashing */
.flash { animation: none; }
/* Or replace with non-flashing visual indicator */
```

**Caveats:**
- Do not make changes unrelated to this Success Criterion.
- Only edit the FTL files linked in the attached document.
- If a page already meets the criterion, do not change it.
- Avoid changing page functionality unless absolutely necessary to meet this Success Criterion.
- Never change the value of a `name` attribute in form controls.
- If full compliance requires non-FTL changes, prepare the FTL and add comments indicating needed future work.
