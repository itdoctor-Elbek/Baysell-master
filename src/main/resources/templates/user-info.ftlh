<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>BUSELL</title>
</head>
<body>
<h1>BUSELL</h1>
<h3>Подробная информация о пользователе ${user.name}</h3>
<b>Номер телефона: </b> ${user.phoneNumber}<br>
<b>Email:</b> ${user.email}<br>
<h4>Товары пользователя ${user.name}</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b ${product.price} pyb. |<a href="/product/"${product.id}>Подробнее...</a></p>
    </div>
    <#else>
    <h3>Товаров нет</h3>
</#list>


<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>