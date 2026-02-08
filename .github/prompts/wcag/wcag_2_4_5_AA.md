---
name: wcag_2_4_5_AA
description: Provide multiple ways to find pages
---

**Attachment Instructions:**
Expect an attachment listing FTL files in the site structure. Review linked files and add or verify multiple ways to locate important pages (search, site map, navigation), unless the page must be found via a process. If attachments are missing, request them.

**Brief description:**
More than one way should be available to locate a web page within a set of pages, except when the page is only reachable as a process step.

**Code examples:**
- Code to look for (indicates failure):

```html
<!-- only a single navigation path exists, no search or site map -->
```

- Code changes to make (fix):

```html
<!-- Add a site search form or link to a sitemap -->
<form action="/search" method="get"><input name="q" aria-label="Search site"></form>
<nav><a href="/sitemap">Site map</a></nav>
```

**Caveats:**
- Do not make changes unrelated to this Success Criterion.
- Only edit the FTL files linked in the attached document.
- If a page already meets the criterion, do not change it.
- Avoid changing page functionality unless absolutely necessary to meet this Success Criterion.
- Never change the value of a `name` attribute in form controls.
- If full compliance requires non-FTL changes, prepare the FTL and add comments indicating needed future work.
