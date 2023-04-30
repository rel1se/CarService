<!DOCTYPE html>
<html>
<head>
    <title>Car Service</title>
</head>
<body>
<h1>CAR SERVICE</h1><hr>
<h3>Подробная информация о пользователе ${user.name}</h3>
<b>Номер телефона: </b> ${user.phoneNumber}<br>
<b>Email: </b> ${user.email}<br>
<h4>Заявки пользователя ${user.name}</h4>
    <#list parts as part>
        <div>
            <p><b>${part.title}</b> ${part.description} | <a href="/part/${part.id}">Подробнее...</a></p>
        </div>
    <#else>
    <h3>Заявок нет</h3>
</#list>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>