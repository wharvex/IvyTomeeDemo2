---
name: wcag_1_4_12_AA
description: Support increased text spacing without loss.
---

**Attachment Instructions**
Expect an attachment containing links to the relevant FTL files that need editing. Review the linked FTL files for hard-coded spacing that would break layout when line-height, paragraph spacing, letter or word spacing are increased; update markup or add comments to support spacing adjustments. If attachments are not present, ask for them before proceeding.

**Brief Description**
Content must not lose meaning or functionality when text spacing properties are increased to specified values.

**Code Examples**
Non-compliant example:
```ftl
<p style="line-height:1">Dense paragraph text</p>
```
Compliant example:
```ftl
<p class="spaced-text">Paragraph text</p>
<!-- Comment: ensure CSS allows line-height:1.5 and increased word/letter spacing without overlap -->
```

**Caveats**
- No changes unrelated to the specific Success Criterion should be made.
- No file other than the FTL files linked in the attached document should be edited.
- If a page seems to already meet the requirements of the Success Criterion, no changes should be made to that page.
- Changes to page functionality should be avoided unless absolutely necessary to meet the requirements of the Success Criterion.
- Never change the value of a "name" attribute in a form control, as these are used in the Java code. The page will break if these are changed.
- Some success criteria cannot be fully met via changes to the FTL files alone. In these cases, make the preparatory FTL changes and include comments noting further work needed to fully meet the requirement.
