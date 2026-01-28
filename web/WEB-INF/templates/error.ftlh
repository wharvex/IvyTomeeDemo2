<#-- @ftlvariable name="pmError" type="mypackage.model.page.PMError" -->
<html lang="en">
<head>
    <title>${pmError.getTitle()!"Error"}</title>
    <link rel="stylesheet" href="${pmError.getRequestContextPath()!""}/css/global.css">
</head>
<body>
    <h1>${pmError.getTitle()!"An error occurred"}</h1>
    <p>${pmError.getMessage()!""}</p>
    <p><a href="${pmError.getRequestContextPath()!""}/">Home</a></p>
</body>
</html>
