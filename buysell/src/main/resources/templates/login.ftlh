<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<h4>Authorization</h4>
<form action="/login" method="post">
    <label for="username">Email:
        <input type="email" name="username"><br><br>
    </label>
    <label for="password">Password:
        <input type="password" name="password"><br><br>
    </label>
    <label>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
    </label>
    <label>
        <input type="submit" value="Enter">
    </label>
</form>
<a href="/registration">New User? Register here</a>
</body>
</html>