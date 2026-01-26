When writing Java methods/classes, always:
- Include JavaDoc comments for methods that describe the method's purpose, parameters, return values, and any exceptions thrown.
- Prefix all parameter names with "p_" to clearly indicate they are parameters.
- Prefix all variable names (including parameters, which should receive this prefix after the "p_" mentioned above) with the data type abbreviation (e.g., "str" for String, "int" for int) to enhance code readability.
- If the variable is a List, prefix it with the data type abbreviation of the elements (singular), and suffix it with "Lst" (e.g., "strNameLst" for a List of Strings).
- If the variable is a Map, don't worry about a data type prefix, as this would be too cumbersome. But do suffix it with "Map" (e.g., "userMap" for a Map of users).
- Prefix all class field names with "m_" to denote member variables.
- Local variables within methods do not need a "letter-underscore" prefix. They just get the type prefix.
- Avoid using the "this" keyword unless absolutely necessary.