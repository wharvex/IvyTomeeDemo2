<#-- @ftlvariable name="user" type="mypackage.User" -->
<html lang="en">
<head>
    <title>Welcome!</title>
</head>
<body>
<#if (user.getUsername())??>
    <h1>Welcome, Guest!</h1>
    <p><a href="/login">Login</a> or <a href="/register">Register</a></p>
<#else>
    <h1>Welcome ${user.getUsername()}!</h1>
</#if>
</body>
</html>
