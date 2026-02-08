---
name: make_prompt_files
description: This prompt is used to generate new prompt files for accessibility edits.
---

# Make Prompt Files for Accessibility Edits

## Background

We need to edit our Freemarker Template Language (FTL) files to meet the requirements of the Web Content Accessibility Guidelines (WCAG) 2.1.

## Instructions

Generate one prompt file per "Success Criterion" in the attached document.

Save the prompt files to the .github/prompts directory with the following naming convention: `wcag_[guideline_number]_[success_criterion_number]_[level].md`. For example, a prompt file for Success Criterion 1.3.4 at Level AA would be named `wcag_1_3_4_AA.md`.

Each prompt file should include the relevant text from the attached document for the corresponding Success Criterion, along with any necessary instructions or guidance for making the accessibility edit. The content of each prompt file should be clear and concise, providing enough information for someone to understand the requirements of the Success Criterion and how to implement the necessary changes.

Each prompt file should advise the agent to expect an attachment containing links to the relevant FTL files that need to be edited to meet the requirements of the Success Criterion. The agent should be instructed to review the attached document and the linked FTL files to identify the necessary changes and implement them accordingly.

Each prompt file should include the following caveats:
- No changes unrelated to the specific Success Criterion should be made.
- If a page seems to already meet the requirements of the Success Criterion, no changes should be made to that page.
- Changes to page functionality should be avoided unless absolutely necessary to meet the requirements of the Success Criterion.
- Never change the value of a "name" attribute in a form control, as these are used in the Java code. The page will break if these are changed.
- Some success criteria (e.g. 1.4.10 Reflow) cannot be fully met via changes to the FTL files alone. In these cases, just make the changes that would prepare the FTL file as much as possible for the necessary changes to be made in the future, and include comments in the FTL file indicating what further changes would be needed to fully meet the requirements of the Success Criterion.

The prompt file should include a YAML front matter header with the following attributes: name, description, argument-hint. The description should provide a brief overview of the accessibility edit that the prompt file is intended for. The argument-hint should provide guidance on how to use the prompt file effectively.
