---
description: Edit Freemarker template files for accessibility improvements.
---

# FTL Accessibility Edits

## Background

### Overview

We need to bring our Freemarker templates into compliance with WCAG 2.1 accessibility standards.

### Expected Attachments

A directory containing multiple Freemarker template files and subdirectories. If no directory is attached, please request it before proceeding.

A markdown file listing accessibility guidelines in a specific area of accessibility. If no such file is attached, please request it before proceeding.

## Objective

Edit all the Freemarker template files in the attached directory and its subdirectories to improve their accessibility related to the specific area described in the attached markdown file.

## Rules

- When adding form control labels and semantic HTML, DO NOT replace any existing elements. If you see a `<span>` that should be a `<label>` or a `<div>` that should be a `<section>`,for example, don't just change the tag name, as this will likely impact the styling that already exists on those elements, which we want to preserve. Instead, wrap the existing element in the appropriate semantic element. DO NOT transfer any attributes from the wrapped element to the new surrounding element.