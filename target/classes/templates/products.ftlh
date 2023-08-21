<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
    <h1>BUYSELL</h1>
    <hr>

    <h3>Товары</h3>
    <#list products as product>
        <div>
            <p>
                <b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее</a>
            </p>
        </div>
        <#else>
            Товаров нет
    </#list>
    <hr>

    <h3>Создать новый товар</h3>
    <form action="/product/add" method="post">
        <label>Название товара:</label>
        <input type="text" name="title"><br><br>

        <label>Описание товара:</label>
        <input type="text" name="description"><br><br>

        <label>Цена товара:</label>
        <input type="number" name="price"><br><br>

        <label>Город:</label>
        <input type="text" name="city"><br><br>

        <label>Имя:</label>
        <input type="text" name="author"><br><br>

        <input type="submit" value="Добавить товар">
    </form>
</body>
</html>