---
name: wcag_1_4_1_A
description: Avoid using color as the only means of conveying information.
---

**Attachment Instructions**
Expect an attachment containing links to the relevant FTL files that need editing. Review the FTL files for instances where color alone conveys meaning (e.g., required fields) and add additional text or programmatic indicators. If attachments are not present, ask for them before proceeding.

**Brief Description**
Color must not be the only visual means of conveying information; provide text labels or icons with descriptive text.

**Code Examples**
Non-compliant example:
```ftl
<label class="required" style="color: red">*</label>
<input name="email" />
```
Compliant example:
```ftl
<label> Email <span class="required" aria-hidden="true">*</span>
  <span class="sr-only">required</span>
</label>
<input name="email" aria-required="true" />
```

**Caveats**
- No changes unrelated to the specific Success Criterion should be made.
- No file other than the FTL files linked in the attached document should be edited.
- If a page seems to already meet the requirements of the Success Criterion, no changes should be made to that page.
- Changes to page functionality should be avoided unless absolutely necessary to meet the requirements of the Success Criterion.
- Never change the value of a "name" attribute in a form control, as these are used in the Java code. The page will break if these are changed.
- Some success criteria cannot be fully met via changes to the FTL files alone. In these cases, make the preparatory FTL changes and include comments noting further work needed to fully meet the requirement.
