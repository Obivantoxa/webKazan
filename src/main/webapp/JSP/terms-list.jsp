<%--
  Created by IntelliJ IDEA.
  User: Nekr
  Date: 007 07.10.22
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            Система управления студентами и их успеваемостью
        </h2>
        <p>${login}</p>
        &nbsp;
        &nbsp;
        <p>
            <c:choose>
                <c:when test="${role eq 1 }">Администратор</c:when>
                <c:when test="${role eq 3 }">Преподаватель</c:when>
                <c:otherwise>Студент</c:otherwise>
            </c:choose>
        </p>
        <c:choose>
            <c:when test="${isLogin eq 1 }">
                <a class="main-link" href="/logout">Logout</a>
            </c:when>
            <c:otherwise>
                <a class="main-link" href="/login">Login</a>
            </c:otherwise>
        </c:choose>
    </div>
</header>
<div class="nav-and-title">
    <a class="div-linka-disc" href="/">На главную</a>



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
