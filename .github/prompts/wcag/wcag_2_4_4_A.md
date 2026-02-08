---
name: wcag_2_4_4_A
description: Make link purpose clear in context
---

**Attachment Instructions:**
Expect an attachment listing FTL files with link text. Review linked pages and ensure each link's purpose can be determined from its text and programmatic context. If attachments are missing, request them before editing.

**Brief description:**
Link text and context must make link purpose clear to users, including assistive technology users.

**Code examples:**
- Code to look for (indicates failure):

```html
<a href="/download">Click here</a>
```

- Code changes to make (fix):

```html
<a href="/download">Download the annual report (PDF)</a>
<!-- Or add surrounding context via aria-describedby or additional text -->
```

**Caveats:**
- Do not make changes unrelated to this Success Criterion.
- Only edit the FTL files linked in the attached document.
- If a page already meets the criterion, do not change it.
- Avoid changing page functionality unless absolutely necessary to meet this Success Criterion.
- Never change the value of a `name` attribute in form controls.
- If full compliance requires non-FTL changes, prepare the FTL and add comments indicating needed future work.
