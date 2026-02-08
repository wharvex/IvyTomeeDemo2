---
name: make_prompt_files
description: This prompt is used to generate new prompt files for accessibility edits.
---

# Make Prompt Files for Accessibility Edits

## Background

We need to edit our Freemarker Template Language (FTL) files to meet the requirements of the Web Content Accessibility Guidelines (WCAG) 2.1.

## File Creation Instructions

Generate one prompt file per "Success Criterion" in the attached document.

Save the prompt files to the .github/prompts/wcag directory with the following naming convention: `wcag_[guideline_number]_[success_criterion_number]_[level].md`. For example, a prompt file for Success Criterion 1.3.4 at Level AA would be named `wcag_1_3_4_AA.md`.

## File Content Instructions

Each prompt file should ONLY include the following:

### Front Matter

The prompt file should include a YAML front matter header with the following attributes: name, description. The name should be the filename (without the .prompt.md portion). The description should provide a brief overview of the accessibility edit that the prompt file is intended for (10 words max).

### Attachment Instructions

Each prompt file should advise the agent to expect an attachment containing links to the relevant FTL files that need to be edited to meet the requirements of the Success Criterion. The agent should be instructed to review the attached document and the linked FTL files to identify the necessary changes and implement them accordingly. If the attachments are not present, the agent should be instructed to ask for them before proceeding with the edits.

### BRIEF Description of the Success Criterion

One to two sentences max.

### Code Examples

Properly labeled examples of:
- Code to look for that indicates the Success Criterion has not been met yet
- Code changes that should be made to meet the Success Criterion

### Caveats

Each prompt file should include the following caveats:
- No changes unrelated to the specific Success Criterion should be made.
- No file other than the FTL files linked in the attached document should be edited.
- If a page seems to already meet the requirements of the Success Criterion, no changes should be made to that page.
- Changes to page functionality should be avoided unless absolutely necessary to meet the requirements of the Success Criterion.
- Never change the value of a "name" attribute in a form control, as these are used in the Java code. The page will break if these are changed.
- Some success criteria (e.g. 1.4.10 Reflow) cannot be fully met via changes to the FTL files alone. In these cases, just make the changes that would prepare the FTL file as much as possible for the necessary changes to be made in the future, and include comments in the FTL file indicating what further changes would be needed to fully meet the requirements of the Success Criterion.
