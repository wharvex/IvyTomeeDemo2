---
description: Create multiple FTLH files in a specified directory.
---

# Create FTLH Files

## Background

I need a lot of Freemarker Template Language HTML (FTLH) files for experimenting with fixing accessibility issues across many files at once.

## Objective

Create 100 FTLH files in the directory provided after the prompt call.

## Rules

- Use subagents to create the files to avoid overwhelming the context window.
- Build out each file with a fair degree of complexity.
- Put plenty of accessibility issues in each file.
- Put some of the files in subdirectories to simulate a real-world project structure.
- Each file should be for a different page.
  - Just make pages up, they don't exist yet on the backend, that's fine.
- Don't look anywhere else in the codebase for this task.