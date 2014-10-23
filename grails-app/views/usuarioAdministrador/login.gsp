<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">
  <title>Log-in</title>
  <asset:stylesheet src="style.css" />

</head>

<body>

  <div class="login-card">
    <h1>Log-in</h1><br>
  <g:form action="doLogin" method="post">
    <input type="text" name="email" placeholder="Email">
    <input type="password" name="password" placeholder="Password">
    <input type="submit" name="login" class="login login-submit" value="login">
  </g:form>

  <div class="login-help">
    <a href="#">Register</a> • <a href="#">Forgot Password</a>
  </div>
</div>
  <script src='http://codepen.io/assets/libs/fullpage/jquery_and_jqueryui.js'></script>

</body>

</html>