<!Doctype html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Elbek</title>
</head>
<body>
<h1>BUYSELL</h1><hr>
<h4>Подробная информация о товаре</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Название товара:</b>${products.title}<br>
<b>Описание товара:</b>${products.description}<br>
<b>Цена товара:</b>${products.price}<br>
<b>Город товара:</b>${products.city}<br>
<b>Автор товара:</b><a href="/user/${product.user.id}"> ${products.user.name}</a><br>
</body>
</html>