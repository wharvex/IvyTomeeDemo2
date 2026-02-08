---
name: wcag_1_3_5_AA
description: Make input purposes programmatically determinable.
---

**Attachment Instructions**
Expect an attachment containing links to the relevant FTL files that need editing. Review the linked FTL files for form inputs and add or confirm appropriate input purpose attributes (e.g., HTML autocomplete) or programmatic cues. If attachments are not present, ask for them before proceeding.

**Brief Description**
Inputs collecting specific data must enable programmatic identification of their purpose (e.g., autocomplete attributes).

**Code Examples**
Non-compliant example:
```ftl
<input type="text" name="address" />
```
Compliant example:
```ftl
<input type="text" name="address" autocomplete="street-address" />
```

**Caveats**
- No changes unrelated to the specific Success Criterion should be made.
- No file other than the FTL files linked in the attached document should be edited.
- If a page seems to already meet the requirements of the Success Criterion, no changes should be made to that page.
- Changes to page functionality should be avoided unless absolutely necessary to meet the requirements of the Success Criterion.
- Never change the value of a "name" attribute in a form control, as these are used in the Java code. The page will break if these are changed.
- Some success criteria cannot be fully met via changes to the FTL files alone. In these cases, make the preparatory FTL changes and include comments noting further work needed to fully meet the requirement.
