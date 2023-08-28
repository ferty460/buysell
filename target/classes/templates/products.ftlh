<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
    <h1>BUYSELL | <a href="/login">Войти</a></h1>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Выйти">
    </form>
    <hr>

    <h3>Товары</h3>

    <!--  search by title  -->
    <form action="/" method="get">
        Поиск по названию: <input type="text" name="title"> <br>
        <input type="submit" value="Поиск" />
    </form>

    <!--  products list  -->
    <#list products as product>
        <div>
            <p>
                <b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее</a>
            </p>
        </div>
        <#else>
            <b>Товаров нет</b>
    </#list>
    <hr>

    <!--  new product  -->
    <h3>Создать новый товар</h3>
    <form action="/product/add" method="post" enctype="multipart/form-data">
        <label>Название товара:</label> <input type="text" name="title"><br><br>
        <label>Описание товара:</label> <input type="text" name="description"><br><br>
        <label>Цена товара:</label> <input type="number" name="price"><br><br>
        <label>Город:</label> <input type="text" name="city"><br><br>
        <label>Имя:</label> <input type="text" name="author"><br><br>
        <label>Первая фотография:</label> <input type="file" name="file1"><br><br>
        <label>Вторая фотография:</label> <input type="file" name="file2"><br><br>
        <label>Третья фотография:</label> <input type="file" name="file3"><br><br>

        <input type="submit" value="Добавить товар">
    </form>
</body>
</html>