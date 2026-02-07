
<#include "_header.ftl">
<h1>Welcome to Our Site</h1>
<img src="logo.png">
<nav>
  <ul>
    <#list navItems as navItem>
      <li><a href="${navItem.url}">${navItem.label}</a></li>
    </#list>
  </ul>
</nav>
<div style="color: #aaa; background: #fff;">Low contrast text</div>
<form>
  <input type="text" name="username">
  <input type="password" name="password">
  <button>Login</button>
</form>
<#include "_footer.ftl">


