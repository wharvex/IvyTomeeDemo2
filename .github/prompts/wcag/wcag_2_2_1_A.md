---
name: wcag_2_2_1_A
description: Make time limits adjustable or extendable
---

**Attachment Instructions:**
Expect an attachment pointing to FTL files implementing time-limited interactions or auto-logout. Review the files and add mechanisms to turn off, adjust, or extend time limits as required. If attachments are missing, request them before proceeding.

**Brief description:**
For each content-set time limit, provide mechanisms to turn it off, adjust it widely, or warn and allow extension before expiration.

**Code examples:**
- Code to look for (indicates failure):

```javascript
setTimeout(function(){ logout(); }, 300000); // auto-logout after 5 minutes
```

- Code changes to make (fix):

```html
<!-- Add UI to extend or disable timeout -->
<button id="extend-session">Extend session</button>
<!-- Or add a user setting: <label><input type="checkbox" id="disableTimeout"> Disable timeout</label> -->
```

**Caveats:**
- Do not make changes unrelated to this Success Criterion.
- Only edit the FTL files linked in the attached document.
- If a page already meets the criterion, do not change it.
- Avoid changing page functionality unless absolutely necessary to meet this Success Criterion.
- Never change the value of a `name` attribute in form controls.
- If full compliance requires non-FTL changes, prepare the FTL and add comments indicating needed future work.
