---
name: wcag_2_4_6_AA
description: Ensure headings and labels describe purpose
---

**Attachment Instructions:**
Expect an attachment listing FTL files that use headings and form labels. Review linked FTL files and ensure headings and labels describe purpose and are used semantically. If attachments are missing, request them.

**Brief description:**
Headings and labels must describe the topic or purpose to aid in navigation and comprehension.

**Code examples:**
- Code to look for (indicates failure):

```html
<h2></h2>
<label for="input"> </label>
```

- Code changes to make (fix):

```html
<h1>Account settings</h1>
<label for="email">Email address</label>
```

**Caveats:**
- Do not make changes unrelated to this Success Criterion.
- Only edit the FTL files linked in the attached document.
- If a page already meets the criterion, do not change it.
- Avoid changing page functionality unless absolutely necessary to meet this Success Criterion.
- Never change the value of a `name` attribute in form controls.
- If full compliance requires non-FTL changes, prepare the FTL and add comments indicating needed future work.
