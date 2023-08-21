<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <h1>BUYSELL</h1>
    <h4>Подробная информация о товаре</h4>

    <b>Название товара: </b> ${product.title} <br>
    <b>Описание: </b> ${product.description} <br>
    <b>Цена: </b> ${product.price} <br>
    <b>Город: </b> ${product.city} <br>
    <b>Автор: </b> ${product.author} <br>

    <hr>

    <form action="/product/delete/${product.id}" method="post">
        <input type="submit" value="Удалить товар">
    </form>
</body>
</html>