<#-- @ftlvariable name="user" type="mypackage.User" -->
<html lang="en">
<head>
    <title>Welcome!</title>
</head>
<body>
<#if (user.getUsername())??>
    <h1>Welcome ${user.getUsername()}!</h1>
<#else>
    <h1>Welcome, Guest!</h1>
    <p><a href="/myapp-0.1-dev/login">Login</a> or <a href="/myapp-0.1-dev/register">Register</a></p>
</#if>
</body>
</html>
