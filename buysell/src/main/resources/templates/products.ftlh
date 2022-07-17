<!DOCTYPE html>
<html lang="en">
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<hr>
<#if user.email??>
    <h3>Logged in as: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Sign out">
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Admin panel</a>
    </#if>
    <#else>
        <a href="/login">Sign in</a>
</#if>
<hr>
<h4>Products from all Poland</h4>
<form action="/" method="get">
    <label for="title"> Search ads by title:
        <input type="text" name="title">
    </label><br>
    <input type="submit" value="search">
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} $ | <a href="/product/${product.id}">Details...</a></p>
    </div>
    <#else>
    <h3>No Products found</h3>
</#list>
<#if user.email??>
<hr>
<h3>Create new product</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    <label for="title">Name of product:
        <input type="text" name="title">
    </label><br><br>
    <label for="description">Description
        <input type="text" name="description">
    </label><br><br>
    <label for="price">Price in dollars
        <input type="number" name="price">
    </label><br><br>
    <label for="city">City
        <input type="text" name="city">
    </label><br><br>
    <label for="file1">Image-1
        <input type="file" name="file1">
    </label><br><br>
    <label for="file2">Image-2
        <input type="file" name="file2">
    </label><br><br>
    <label for="file3">Image-3
        <input type="file" name="file3">
    </label><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Add product">
</form>
</#if>
</body>
</html>