<%--
  Created by IntelliJ IDEA.
  User: Nekr
  Date: 007 07.10.22
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>terms-list</title>
    <link rel="stylesheet" href="../resources/styles/style.css">

</head>
<body>
<header>
    <div class="container">
        <h2 class="main-title">
            Система управления студентами и их успеваимостью
        </h2>
        <a class="main-link" href="\">Logout</a>
    </div>
</header>
<div class="nav-and-title">
    <a class="div-linka-disc" href="/home">На главную</a>



</div>
<div class="container">
    <div class="right-table">
        <table class="table-disciplin">
            <form class="term-form" action="" method="get">

                <p class="one">
                    <label for="term">Выберите семестр</label> &nbsp;
                    <select class="one" name="term" id="term">&nbsp;
                        <option class="one" value="семестр 1">семестр 1</option>
                        <option class="one" value="семестр 2">семестр 2</option>
                        <option class="one" value="семестр 3">семестр 3</option>
                        <option class="one" value="семестр 4">семестр 4</option>
                    </select>&nbsp;
                    <input class="buttons" type="submit" value="Выбрать">
                </p>
                <p class="two">Длительность семестра: 24 недели</p>

            </form>
    </div>

    <div class="ms">
        <p class="two">Список дисциплин семестра</p>

        <table class="t">
            <tr class="header-table">

                <th>Наименование дисциплины</th>
            </tr>
            <tr>

                <th>Высшая математика</th>
            </tr>
            <tr>

                <th>Информатика</th>
            </tr>
            <tr>

                <th>Системный анализ</th>
            </tr>
            <tr>

                <th>Управление проектами</th>
            </tr>
            <tr>

                <th>Основы дискретной математики</th>
            </tr>
        </table>
    </div>
    <div class="msas">
        <button class="admin-buttun">
            <a href="term-create.html">Создать Семестр</a>
        </button>
        <button class="admin-buttun">
            <a href="modif-term.html">Модифицировать текущий семестр</a>
        </button>
        <button class="admin-buttun">
            <a href="term-delete.html">Удалить текущий семестр</a>
        </button>

    </div>

</div>

</body>
</html>
