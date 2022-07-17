<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<h3>User details: ${user.name}</h3>
<b>Phone number: </b> ${user.phoneNumber}<br>
<b>Email: </b> ${user.email}<br>

<h4>User's products ${user.name}</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} $ | <a href="/product/${product.id}">Details...</a></p>
    </div>
    <#else>
    <h3>
        User doesnt have any ads
    </h3>
</#list>
</body>
</html>