---
name: wcag_1_3_2_A
description: Ensure meaningful reading sequence is programmatically determinable.
---

**Attachment Instructions**
Expect an attachment containing links to the relevant FTL files that need editing. Review the attached FTL files and verify content order matches the logical reading order; reorder or mark up content as needed. If attachments are not present, ask for them before proceeding.

**Brief Description**
When presentation order affects meaning, content must have a programmatically determinable reading sequence that preserves meaning.

**Code Examples**
Non-compliant example:
```ftl
<div class="col-right">Summary</div>
<div class="col-left">Main article</div>
```
Compliant example (logical DOM order):
```ftl
<div class="main-article">Main article</div>
<aside class="summary">Summary</aside>
```

**Caveats**
- No changes unrelated to the specific Success Criterion should be made.
- No file other than the FTL files linked in the attached document should be edited.
- If a page seems to already meet the requirements of the Success Criterion, no changes should be made to that page.
- Changes to page functionality should be avoided unless absolutely necessary to meet the requirements of the Success Criterion.
- Never change the value of a "name" attribute in a form control, as these are used in the Java code. The page will break if these are changed.
- Some success criteria cannot be fully met via changes to the FTL files alone. In these cases, make the preparatory FTL changes and include comments noting further work needed to fully meet the requirement.
