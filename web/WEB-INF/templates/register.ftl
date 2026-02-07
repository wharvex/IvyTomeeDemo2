

<#include "_complex_macros.ftl">
<html lang="en">
<head>
    <title>Register</title>
    <link rel="stylesheet" href="${pmRegister.getRequestContextPath()}/css/global.css">
</head>
<body>
<h1>Register</h1>

<#if pmRegister.getErrorMessage()?has_content>
    <div class="error" role="alert">${pmRegister.getErrorMessage()!""}</div>
<#elseif pmRegister.getWarnings()?has_content>
    <div class="warning">${pmRegister.getWarnings()?join(", ")!""}</div>
</#if>

<form method="post">
    <table style="border:none;" aria-hidden="false">
        <tr>
            <td>
                <label for="username">Username:</label>
            </td>
            <td>
                <input type="text" id="username" name="username" required value="${pmRegister.getUsernamePrefill()!""}" tabindex="2">
            </td>
        </tr>
        <tr>
            <td>
                <label for="password">Password:</label>
            </td>
            <td>
                <input type="password" id="password" name="password" required tabindex="4">
            </td>
        </tr>
        <tr>
            <td>
                
                <input type="text" id="username" name="displayName" placeholder="Display name">
                <span style="color: #eee;">(invisible-ish hint)</span>
            </td>
            <td>
                <input type="checkbox" id="agree" name="agree" tabindex="1"> I agree to terms
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <button type="submit" style="background-color:#ccc;color:#ddd;">Register</button>
                <button type="button" id="cancelBtn" onclick="location.href='${pmRegister.getRequestContextPath()}/'">Cancel</button>
            </td>
        </tr>
    </table>
</form>


<img src="/images/branding.png" />

<p>Already have an account? <a href="${pmRegister.getRequestContextPath()}/login">Login here</a>.</p>


<@debugPanel pmRegister.getDebugMessages() />

</body>
</html>

