<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Elbek</title>
</head>
<body>
<h1>BUYSELL</h1>
<hr>

<#if user.email??>
    <!-- Oturum açılmış kullanıcı için -->
    <h3>İmza polzovatel: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Выйтi"/>
    </form>
<#else>
    <!-- Kullanıcı girişi yapılmamışsa -->
    <a href="/login">Вoйты</a>
</#if>

<h4>Товары по всей Киргизии!</h4>
<form action="/" method="get">
    Поиск по названию объявления:<input type="text" name="title"><br>
    <input type="submit" value="Поиск"/>
</form>

<#if products??>
    <#list products as product>
        <div>
            <p><b>${product.title}</b> ${product.price} pyb.| <a href="/product/${product.id}">Подробнее...</a></p>
        </div>
    </#list>
<#else>
    <h3>Товаров нет</h3>
</#if>

<#if user?? && user.isAuthenticated()>
    <hr>
    <h3>Создать новый товар</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Название объявления:<input type="text" name="title"/><br><br>
        Описание объявления:<input type="text" name="description"/><br><br>
        Цена:<input type="number" name="price"/><br><br>
        Город:<input type="text" name="city"/><br><br>
        Имя:<input type="text" name="author"/><br><br>
        Первая фотогравия.<input type="file" name="file1"/><br><br>
        Вторая фотогравия.<input type="file" name="file2"/><br><br>
        Третий фотогравия.<input type="file" name="file3"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Добавить товар"/>
    </form>
</#if>

</body>
</html>>