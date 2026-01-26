<#-- @ftlvariable name="pmRegister" type="mypackage.model.page.PMRegister" -->
<html lang="en">
<head>
    <title>Register</title>
    <link rel="stylesheet" href="${pmRegister.getRequestContextPath()}/css/global.css">
</head>
<body>
<h1>Register</h1>
<#if pmRegister.getErrorMessage()?has_content>
    <div class="error">${pmRegister.getErrorMessage()!""}</div>
</#if>
<form method="post">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required value="${pmRegister.getUsernamePrefill()!""}">
    <br>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required>
    <br>
    <button type="submit">Register</button>
</form>
<p>Already have an account? <a href="${pmRegister.getRequestContextPath()}/login">Login here</a>.</p>
</body>
</html>
