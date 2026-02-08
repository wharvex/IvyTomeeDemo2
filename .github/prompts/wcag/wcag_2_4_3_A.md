---
name: wcag_2_4_3_A
description: Preserve meaningful focus order
---

**Attachment Instructions:**
Expect an attachment listing FTL files with complex navigation or custom controls. Review the linked files and ensure focus order is logical and preserves meaning. If attachments are missing, request them.

**Brief description:**
Focusable components must receive focus in an order that preserves meaning and operability when navigating sequentially.

**Code examples:**
- Code to look for (indicates failure):

```html
<a href="#">Link A</a>
<button>Submit</button>
<!-- DOM order doesn't match visual order -->
```

- Code changes to make (fix):

```html
<!-- Reorder markup in the FTL so keyboard focus follows visual and semantic order -->
<nav>...links in visual order...</nav>
<main>...main content...</main>
```

**Caveats:**
- Do not make changes unrelated to this Success Criterion.
- Only edit the FTL files linked in the attached document.
- If a page already meets the criterion, do not change it.
- Avoid changing page functionality unless absolutely necessary to meet this Success Criterion.
- Never change the value of a `name` attribute in form controls.
- If full compliance requires non-FTL changes, prepare the FTL and add comments indicating needed future work.
