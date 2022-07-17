<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<h4>Registration</h4>
<form action="/registration" method="post">
    <label for="username">User Name:
        <input type="text" name="name"><br><br>
    </label>
    <label for="email">Email:
        <input type="email" name="email"><br><br>
    </label>
    <label for="phoneNumber">Phone number:
        <input type="text" name="phoneNumber"><br><br>
    </label>
    <label for="password">Password:
        <input type="password" name="password"><br><br>
    </label>
    <label>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
    </label>
    <label>
        <input type="submit" value="Register">
    </label>
</form>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>