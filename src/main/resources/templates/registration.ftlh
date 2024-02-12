<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>BUSELL</title>
</head>
<body>
<h1>BUSELL</h1>
<h4>Регистрация</h4>
<form action="/registration" method="post" th:action="@{/registration}" ><br><br>
    Иmя пользователя: <input type="text" name="name"><br><br>
    Эл почта: <input type="email" name="email"><br><br>
    Номер телефона: <input type="number" name="phoneNumber"><br><br>
    Пароль: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="вход"/>
</form>
</div>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>