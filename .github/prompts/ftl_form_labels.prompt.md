---
description: Add missing labels to form controls in Freemarker template files.
---

# FTL Form Labels

## Background

### Overview

We need to bring our Freemarker Template Language (FTL) files into compliance with WCAG 2.1 accessibility standards. Missing labels on form controls is a common accessibility issue that needs to be addressed.

### Expected Attachments

A directory containing multiple Freemarker template files and subdirectories, and/or individual FTL files. If no directory or files are attached, please request them before proceeding.

## Objective

### Overview

Edit all the Freemarker template files in the attached directory and its subdirectories to include form control labels where they are missing.

### Specific Tasks

- ALL form controls must have associated `<label>` elements. Also include `<fieldset>` and `<legend>` for grouped controls.
  - Form control elements include: `<input>`, `<select>`, `<textarea>`, `<button>`, etc.
  - All `<input>` elements count as form controls, regardless of the value of their `type` attribute (e.g., text, checkbox, radio, submit, etc).

## Rules

- DO NOT replace any existing elements. If you see a `<span>` that should be a `<label>`, for example, don't just change the tag name, as this will likely impact the styling that already exists on those elements, which we want to preserve. Instead, wrap the existing element in the appropriate semantic element. DO NOT transfer any attributes from the wrapped element to the new surrounding element.
- DO NOT give any of the `<label>` elements the `class="hidden"` attribute, as this is not accepted by our accessibility standards.