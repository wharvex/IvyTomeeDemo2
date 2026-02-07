---
name: java
description: Guide for writing Java code in this repository. Use this as a reference for coding style and conventions when contributing Java code.
---

When writing Java code for this repository, please adhere to the following guidelines to maintain consistency and readability:

- When creating a method, give it JavaDoc comments that describe its purpose, parameters, return values, and any exceptions thrown.
- Prefix all parameter names with "p_" to clearly indicate they are parameters.
- Prefix all variable names with the data type abbreviation (e.g., "str" for String, "int" for int) to enhance code readability.
  - Parameters should receive this prefix after the "p_" mentioned above (e.g., "p_strName" for a String parameter named "name").
- If the variable is a List, prefix it with the data type abbreviation of the elements (singular), and suffix it with "Lst" (e.g., "strNameLst" for a List of Strings).
- If the variable is a Map, don't worry about a data type prefix, as this would be too cumbersome. But do suffix it with "Map" (e.g., "userMap" for a Map of users).
- Prefix all class field names with "m_" to denote member variables.
- Local variables within methods do not need a "letter-underscore" prefix. They just get the type prefix.
- Avoid using the "this" keyword unless absolutely necessary.
- When making a class field that is a collection, only give it a getter, and that getter should check if the field is null and if so, initialize it to an empty collection before returning it. This way, you can avoid null pointer exceptions when trying to add items to the collection.