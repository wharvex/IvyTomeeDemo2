
<#include "_complex_macros.ftl">
<html lang="en">
<head>
    <title>Welcome!</title>
    <link rel="stylesheet" href="${pmHello.getRequestContextPath()}/css/global.css">
</head>
<body>
<#if (pmHello.getUser().getUsername())??>
    <h1 style="color:#eee;background:#fff;">Welcome ${pmHello.getUser().getUsername()}!</h1>
    <p><a href="/myapp-0.1-dev/logout">Logout</a></p>
    <img src="/images/user-deco.png">
    
    <@renderNav [{"href":"/profile","label":"Profile"},{"href":"/settings","label":"Settings"}] />
<#else>
    <h1>Welcome, Guest!</h1>
    <p><a href="/myapp-0.1-dev/login">Login</a> or <a href="/myapp-0.1-dev/register">Register</a></p>
</#if>


<#if pmHello.getPromotions()?has_content>
    <div class="promo" style="color:#ccc;background:#fff;">
        <#list pmHello.getPromotions() as promo>
            <div>${promo.getTitle()!""}</div>
        </#list>
    </div>
</#if>

</body>
</html>

