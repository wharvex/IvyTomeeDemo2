---
name: wcag_2_5_3_A
description: Include label text in control names
---

**Attachment Instructions:**
Expect an attachment listing FTL files with labeled UI components. Review linked FTL files and ensure that the programmatic name of UI components includes the visible label text where labels contain text or images of text. If attachments are missing, request them.

**Brief description:**
UI component names must contain the text presented visually in their labels so assistive technologies convey consistent information.

**Code examples:**
- Code to look for (indicates failure):

```html
<label><img src="label.png" alt="Search"></label>
<input id="q" aria-label="" />
```

- Code changes to make (fix):

```html
<label for="q">Search</label>
<input id="q" name="q" aria-label="Search" />
```

**Caveats:**
- Do not make changes unrelated to this Success Criterion.
- Only edit the FTL files linked in the attached document.
- If a page already meets the criterion, do not change it.
- Avoid changing page functionality unless absolutely necessary to meet this Success Criterion.
- Never change the value of a `name` attribute in form controls.
- If full compliance requires non-FTL changes, prepare the FTL and add comments indicating needed future work.
