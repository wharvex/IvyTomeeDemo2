---
name: wcag_2_5_1_A
description: Replace multipoint gestures with single-pointer alternatives
---

**Attachment Instructions:**
Expect an attachment listing FTL files implementing gesture-driven UI. Review the FTL and ensure multipoint or path-based gestures have single-pointer alternatives. If attachments are missing, ask for them.

**Brief description:**
Functionality that uses multipoint or path-based gestures must be operable with a single pointer without requiring a path gesture.

**Code examples:**
- Code to look for (indicates failure):

```javascript
// Custom canvas path-draw interaction requiring multi-touch
```

- Code changes to make (fix):

```html
<!-- Provide buttons or alternate controls to accomplish the same action -->
<button class="zoom-in">Zoom in</button>
```

**Caveats:**
- Do not make changes unrelated to this Success Criterion.
- Only edit the FTL files linked in the attached document.
- If a page already meets the criterion, do not change it.
- Avoid changing page functionality unless absolutely necessary to meet this Success Criterion.
- Never change the value of a `name` attribute in form controls.
- If full compliance requires non-FTL changes, prepare the FTL and add comments indicating needed future work.
