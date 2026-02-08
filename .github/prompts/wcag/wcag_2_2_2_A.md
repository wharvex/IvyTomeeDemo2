---
name: wcag_2_2_2_A
description: Provide pause, stop, or hide controls
---

**Attachment Instructions:**
Expect an attachment listing FTL files with moving, blinking, scrolling, or auto-updating content. Review each linked FTL and add mechanisms to pause, stop, hide, or control update frequency. If attachments are missing, ask for them.

**Brief description:**
Provide a mechanism to pause, stop, or hide moving or auto-updating content that starts automatically and is presented alongside other content.

**Code examples:**
- Code to look for (indicates failure):

```html
<div class="ticker">Latest news: ...</div>
```

- Code changes to make (fix):

```html
<div class="ticker" aria-live="off">Latest news: ...</div>
<button class="pause">Pause</button>
<button class="hide">Hide</button>
```

**Caveats:**
- Do not make changes unrelated to this Success Criterion.
- Only edit the FTL files linked in the attached document.
- If a page already meets the criterion, do not change it.
- Avoid changing page functionality unless absolutely necessary to meet this Success Criterion.
- Never change the value of a `name` attribute in form controls.
- If full compliance requires non-FTL changes, prepare the FTL and add comments indicating needed future work.
