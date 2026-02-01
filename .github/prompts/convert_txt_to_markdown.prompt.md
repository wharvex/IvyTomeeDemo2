---
description: Convert the attached .txt file to Markdown format.
---

# Convert TXT to Markdown

## Background

### Overview

I copied text from the official WCAG 2.1 standards site and pasted it into a text file. I need to convert the text into a nicely formatted Markdown file for use with agentic programming.

### Expected Attachments

A .txt file containing the copied WCAG 2.1 standards text. If no file is attached, please request it before proceeding.

## Objective

### Overview

Convert the attached .txt file into a well-structured Markdown file. Save the resulting Markdown content into a new file in the same directory as the original .txt file.

### Specific Tasks

- As you read the file, you will see references to the hierarchical sections of the WCAG rules (e.g. 1., 1.1, 1.1.1, etc). Create a hierarchy of Markdown headings to approximate what you can infer about the original structure based on the numbering.
- Omit all lines of the form "Understanding `<something>` |". These usually appear right after a heading and are not part of the actual content.
- You will see lines right below the "Understanding ..." lines that start with "How to meet ... (Level X)". We don't need the "How to meet ..." parts of these lines, but we do want to keep the "(Level X)" parts. So for these lines, just remove the "How to meet ..." part and keep the rest.