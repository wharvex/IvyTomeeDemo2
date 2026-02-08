---
name: wcag_2_4_7_AA
description: Ensure focus indicator is visible
---

**Attachment Instructions:**
Expect an attachment listing FTL and CSS files that affect focus styles. Review linked FTL and associated CSS; ensure keyboard focus is visible for interactive elements and components. If attachments are missing, request them.

**Brief description:**
Any keyboard-operable UI must have a visible keyboard focus indicator in an operational mode.

**Code examples:**
- Code to look for (indicates failure):

```css
:focus { outline: none; }
```

- Code changes to make (fix):

```css
:focus { outline: 3px solid #005fcc; outline-offset: 2px; }
```

**Caveats:**
- Do not make changes unrelated to this Success Criterion.
- Only edit the FTL files linked in the attached document (add comments referencing CSS where needed).
- If a page already meets the criterion, do not change it.
- Avoid changing page functionality unless absolutely necessary to meet this Success Criterion.
- Never change the value of a `name` attribute in form controls.
- If full compliance requires non-FTL changes, prepare the FTL and add comments indicating needed future work.
