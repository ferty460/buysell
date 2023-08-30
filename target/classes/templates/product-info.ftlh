<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BUYSELL</title>
</head>
<body>
    <h1>BUYSELL</h1>
    <h4>Подробная информация о товаре</h4>

    <!--  images  -->
    <#list images as img>
        <img src="/images/${img.id}" height="60px" alt="pic ${img.id}"><br><br>
    </#list>

    <!--  product info  -->
    <b>Название товара: </b> ${product.title} <br>
    <b>Описание: </b> ${product.description} <br>
    <b>Цена: </b> ${product.price} <br>
    <b>Город: </b> ${product.city} <br>
    <b>Автор: </b><a href="/user/${product.user.id}">${product.user.name}</a> <br>

</body>
</html>