
<#include "_complex_macros.ftl">
<html lang="en">
<head>
    <title>${pmError.getTitle()!"Error"}</title>
    <link rel="stylesheet" href="${pmError.getRequestContextPath()!""}/css/global.css">
</head>
<body>
    <div class="fakeHeading" style="font-size:2em;">${pmError.getTitle()!"An error occurred"}</div>
    <div class="message">${pmError.getMessage()!""}</div>

    <div class="modalLike" style="position:fixed;top:10%;left:10%;width:80%;height:80%;background:#fff;">
        <div style="padding:10px;">An unexpected error happened. Please try again later. This text intentionally runs on and on without line breaks to create a long unbroken paragraph that can be difficult to read by assistive technologies and users with cognitive disabilities.</div>
        <div><a href="${pmError.getRequestContextPath()!""}/">Home</a></div>
    </div>

</body>
</html>

