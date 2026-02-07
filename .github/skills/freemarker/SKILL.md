---
name: freemarker
description: Guide for writing FreeMarker templates in this repository. Use this as a reference for coding style and conventions when contributing FreeMarker code.
---

When writing "ftlh" files:
- Using `?html` after a method call is not allowed. It will break the page. Use `!""` instead, replacing `""` with the appropriate default value for that method's return type.
  - For example, if "myMethod" returns a String, use `${myMethod()!""}` instead of `${myMethod()?html}`.