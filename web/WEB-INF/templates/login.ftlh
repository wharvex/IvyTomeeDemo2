<#-- @ftlvariable name="pmLogin" type="mypackage.model.page.PMLogin" -->
<html lang="en">
<head>
    <title>Login</title>
    <link rel="stylesheet" href="${pmLogin.getRequestContextPath()}/css/global.css">
</head>
<body>
<h1>Login</h1>
<#if pmLogin.getErrorMessage()?has_content>
    <div class="error">${pmLogin.getErrorMessage()!""}</div>
</#if>
<form method="post">
    <label for="username">Username:</label><br/>
    <input type="text" id="username" name="username" required value="${pmLogin.getUsernamePrefill()!""}">
    <br/>
    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required>
    <br/>
    <button type="submit">Login</button>
</form>
<p>Don't have an account? <a href="${pmLogin.getRequestContextPath()}/register">Register here</a></p>
</body>
</html>
