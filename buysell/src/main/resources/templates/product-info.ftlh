<!DOCTYPE html>
<html lang="en">
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1><hr>
<h4>Details of Product</h4>
<#-- ?if_exists (this one is depricated) changed to ! sign-->
<#list images as img>
    <img src="/images/${img.id}" height="60px"><br><br>
</#list>
<b>Name of product: </b> ${product.title}<br>
<b>Description: </b> ${product.description}<br>
<b>Price: </b> ${product.price}<br>
<b>City: </b> ${product.city}<br>
<b>Author: </b> <a href="/user/${product.user.id}">${product.user.name}</a><br>

<#--<hr>-->
<#--<h3>Create new product</h3>-->
<#--<form action="/product/delete/${product.id}" method="post">-->
<#--    <input type="submit" value="Delete product">-->
<#--</form>-->
</body>
</html>