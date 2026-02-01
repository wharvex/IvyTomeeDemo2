---
description: Edit Freemarker template files for accessibility improvements.
---

# FTL Accessibility Edits

## Background

### Overview

We need to bring our Freemarker templates into compliance with WCAG 2.1 accessibility standards.

### Expected Attachments

A directory containing multiple Freemarker template files and subdirectories. If no directory is attached, please request it before proceeding.

## Objective

### Overview

Edit all the Freemarker template files in the attached directory and its subdirectories to improve their accessibility

### Specific Tasks

- All form controls must have associated `<label>` elements. Also include `<fieldset>` and `<legend>` for grouped controls.
- Use semantic HTML elements (e.g., `<header>`, `<nav>`, `<main>`, `<footer>`, `<section>`, `<article>`).
- Ensure all images have descriptive `alt` attributes.
- Ensure proper heading structure (e.g., `<h1>` for main titles, `<h2>` for subsections, no skipped heading levels, every page has one `<h1>`, etc).
- Add ARIA roles and attributes where necessary to enhance accessibility.
- Ensure there are no fixed-width elements that could hinder page "reflow" when zoomed in.
- Ensure there is no underlined text that is not a link.
- Ensure sufficient color contrast for text and background colors.

## Rules

- When implementing the tasks related to form control labels and semantic HTML, DO NOT replace any existing elements. If you see a `<span>` that should be a `<label>` or a `<div>` that should be a `<section>`,for example, don't just change the tag name, as this will likely impact the styling that already exists on those elements, which we want to preserve. Instead, wrap the existing element in the appropriate semantic element. DO NOT transfer any attributes from the wrapped element to the new surrounding element.