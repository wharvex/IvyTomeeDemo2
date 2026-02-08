---
name: wcag_2_4_2_A
description: Ensure pages have descriptive titles
---

**Attachment Instructions:**
Expect an attachment listing FTL files for pages. Review page templates and ensure `<title>` elements describe the page topic or purpose. If attachments are missing, request them.

**Brief description:**
Web pages must have titles that describe their topic or purpose.

**Code examples:**
- Code to look for (indicates failure):

```html
<title></title>
<!-- or a generic title like -->
<title>My Site</title>
```

- Code changes to make (fix):

```ftl
<title>${pageTitle?if_exists?html}</title>
<!-- Ensure pageTitle is set to a descriptive string per page -->
```

**Caveats:**
- Do not make changes unrelated to this Success Criterion.
- Only edit the FTL files linked in the attached document.
- If a page already meets the criterion, do not change it.
- Avoid changing page functionality unless absolutely necessary to meet this Success Criterion.
- Never change the value of a `name` attribute in form controls.
- If full compliance requires non-FTL changes, prepare the FTL and add comments indicating needed future work.
