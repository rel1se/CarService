<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Car Service</title>
</head>
<body>
    <h1>CAR SERVICE</h1>
    <#if user.email??>
        <h3>Имя пользователя: <i>${user.name}</i></h3>
        <form action="/logout" method="post">
            <input type = "hidden" name="_csrf" value="${_csrf.token}">
            <input type = "submit" value="Выйти">
        </form>
        <#if user.isAdmin()>
            <a href="/admin">Панель администратора</a>
        </#if>
    <#else>
        <a href = "/login">Войти</a><hr>
    </#if>
    <p>Сеть автосервисов по всей России</p>
    <form action ="/" method="get">
        Поиск по марке автомобиля: <input type="text" name = "title">
        <input type="submit" value = "Поиск"/>
    </form>
    <#list parts as part>
        <div>
            <p><b>${part.title}</b> ${part.description} <a href="/part/${part.id}">Подробнее</a></p>
        </div>
        <#else>
        <h3>Автомобилей нет</h3>
    </#list>
    <#if user.email??>
        <hr>
        <h3>Добавить новую запчасть</h3>
        <form action="/part/create" method="post" enctype="multipart/form-data">
            Марка машины: <input type="text" name = "title"><br><br>
            Кузов авто: <input type="text" name = "description"><br><br>
            Год выпуска: <input type="number" name = "price"><br><br>
            Местоположение: <input type="text" name = "city"><br><br>
            Первая фотография: <input type="file" name = "file1"><br><br>
            Вторая фотография: <input type="file" name = "file2"><br><br>
            Третья фотография: <input type="file" name = "file3"><br><br>
            <input type = "hidden" name = "_csrf" value="${_csrf.token}">
            <input type="submit" value="Добавить заявку на починку автомобиля">
        </form>
    </#if>
</body>
</html>