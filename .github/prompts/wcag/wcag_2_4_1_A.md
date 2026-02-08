---
name: wcag_2_4_1_A
description: Add mechanism to bypass repeated blocks
---

**Attachment Instructions:**
Expect an attachment with FTL files containing repeated site blocks (navbars, sidebars). Review the linked FTL files and add skip links or landmarks to allow bypassing repeated content. If attachments are missing, ask for them.

**Brief description:**
Provide a mechanism (e.g., "Skip to main content") to bypass repeated blocks on pages.

**Code examples:**
- Code to look for (indicates failure):

```html
<!-- no skip link present -->
<header> ... </header>
<nav> ... </nav>
<main> ... </main>
```

- Code changes to make (fix):

```html
<a class="skip-link" href="#main">Skip to main content</a>
<main id="main"> ... </main>
```

**Caveats:**
- Do not make changes unrelated to this Success Criterion.
- Only edit the FTL files linked in the attached document.
- If a page already meets the criterion, do not change it.
- Avoid changing page functionality unless absolutely necessary to meet this Success Criterion.
- Never change the value of a `name` attribute in form controls.
- If full compliance requires non-FTL changes, prepare the FTL and add comments indicating needed future work.
