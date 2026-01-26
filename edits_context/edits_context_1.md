# Errors — Missing form label

## What It Means
A form control does not have a corresponding label.

## Why It Matters
If a form control does not have a properly associated text label, the function or purpose of that form control may not be presented to screen reader users. Form labels also provide visible descriptions and larger clickable targets for form controls.

## What To Do
- If a text label for a form control is visible, use the `<label>` element to associate it with its respective form control.  
- If there is no visible label, either:
  - provide an associated label,
  - add a descriptive `title` attribute to the form control, or
  - reference the label(s) using `aria-labelledby`.
- Labels are not required for image, submit, reset, button, or hidden form controls.
