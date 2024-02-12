<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<h4>Avtorizasiya</h4>
<form action="/login" method="get" th:action="@{/login}">
    El pochta:<input type="email" name="username" ><br><br>
    Parol :<input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <button type="submit">Вход</button>
</form>
<a href="/registration"> Зарегистрироваться</a>
</body>
</html>