---
name: wcag_1_3_3_A
description: Avoid instructions relying on only sensory characteristics.
---

**Attachment Instructions**
Expect an attachment containing links to the relevant FTL files that need editing. Review the FTL files for instructions that rely solely on sensory characteristics (color, shape, sound) and add programmatic or textual cues. If attachments are not present, ask for them before proceeding.

**Brief Description**
Instructions must not rely only on sensory characteristics; provide text labels or additional cues to convey meaning.

**Code Examples**
Non-compliant example:
```ftl
<p>Click the green button to continue.</p>
<button class="btn btn-success">Continue</button>
```
Compliant example:
```ftl
<p>Click the <strong>Continue</strong> button (green)</p>
<button class="btn btn-success">Continue</button>
```

**Caveats**
- No changes unrelated to the specific Success Criterion should be made.
- No file other than the FTL files linked in the attached document should be edited.
- If a page seems to already meet the requirements of the Success Criterion, no changes should be made to that page.
- Changes to page functionality should be avoided unless absolutely necessary to meet the requirements of the Success Criterion.
- Never change the value of a "name" attribute in a form control, as these are used in the Java code. The page will break if these are changed.
- Some success criteria cannot be fully met via changes to the FTL files alone. In these cases, make the preparatory FTL changes and include comments noting further work needed to fully meet the requirement.
