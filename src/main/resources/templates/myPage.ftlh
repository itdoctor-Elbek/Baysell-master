
<div sec:authorize="isAuthenticated()">
    Kullanıcı oturum açmışsa yapılacak işlemler
</div>
<div sec:authorize="!isAuthenticated()">
    Kullanıcı oturum açmamışsa yapılacak işlemler
</div>