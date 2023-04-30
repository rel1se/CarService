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
<p>Сеть автосервисов по всей России</p>
<#list images as img>
    <img src="/images/${img.id}" height="60px"><br><br>
</#list>
<b>Марка машины: </b>${part.title}<br>
<b>Кузов авто: </b>${part.description}<br>
<b>Год выпуска: </b>${part.price}<br>
<b>Город: </b>${part.city}<br>
<b>Автор: </b><a href="/user/${part.user.id}">${part.user.name}</a><br>
</body>
</html>