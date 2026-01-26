<#-- @ftlvariable name="pmHello" type="mypackage.model.page.PMHello" -->
<html lang="en">
<head>
    <title>Welcome!</title>
    <link rel="stylesheet" href="/css/global.css">
</head>
<body>
<#if (pmHello.getUser().getUsername())??>
    <h1>Welcome ${pmHello.getUser().getUsername()}!</h1>
    <p><a href="/myapp-0.1-dev/logout">Logout</a></p>
<#else>
    <h1>Welcome, Guest!</h1>
    <p><a href="/myapp-0.1-dev/login">Login</a> or <a href="/myapp-0.1-dev/register">Register</a></p>
</#if>
</body>
</html>
