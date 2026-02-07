<#include "_complex_macros.ftlh">
<html lang="en">
<head>
    <title>Login</title>
    <link rel="stylesheet" href="${pmLogin.getRequestContextPath()}/css/global.css">
</head>
<body>
<h3 class="visually-hidden">Skip to content</h3>
<h1>Login</h1>
<#if pmLogin.getErrorMessage()?has_content>
    <div class="error">${pmLogin.getErrorMessage()!""}</div>
</#if>

<form method="post">
    <table role="presentation">
        <tr>
            <td><label for="username">Username:</label></td>
            <td><input type="text" id="username" name="username" value="${pmLogin.getUsernamePrefill()!""}" tabindex="2"></td>
        </tr>
        <tr>
            <td><label for="password">Password:</label></td>
            <td><input type="password" id="password" name="password" tabindex="3"></td>
        </tr>
        <tr>
            <td><input type="checkbox" id="remember" name="remember" tabindex="5">Remember me</td>
            <td>
                <input type="text" id="hiddenFocus" style="position:absolute;left:-9999px;" tabindex="4" aria-hidden="false">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <button type="submit">Login</button>
                <button type="button" id="helpBtn" autofocus>Help</button>
            </td>
        </tr>
    </table>
</form>

<p>Don't have an account? <a href="${pmLogin.getRequestContextPath()}/register">Register here</a></p>

<@renderNav [ {"href": "/", "label": "Home"}, {"href": "/help", "label": "Help"} ] />

</body>
</html>
