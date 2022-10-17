<%--
  Created by IntelliJ IDEA.
  User: Nekr
  Date: 006 06.10.22
  Time: 19:51
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>create-student</title>
    <link rel="stylesheet" href="../resources/styles/style.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#datepicker").datepicker();
        });
    </script>
</head>
<body>
<header>
    <div class="container">
        <h2 class="main-title">
            Система управления студентами и их успеваемостью
        </h2>
        <a class="main-link" href="\">Logout</a>
    </div>
</header>
<div class="nav-and-title">
    <a class="div-linka" href="/home">На главную</a>
    <a class="div-linkaa" href="/student">Назад</a>
    <h2>Для модификации студента нажмите кнопку "Создать".</h2>
</div>
<div class="form">
    <div class="set">
        <form action="/StudentModificController" method="post">
            <label class="name-field" for="surname">Фамилия</label>
            <input class="text-field" id="surname" name="surname" value="${student.surname}"> <br> <br>
            <label class="name-field" for="name">Имя</label>
            <input class="text-field" id="name" name="name" value="${student.name}"><br> <br>
            <label class="name-field" for="surname">Группа</label>
            <input class="text-field" id="surname" name="group" value="${student.group}"> <br> <br>
            <label class="name-field" for="name">Дата поступления</label>
            <input class="text-field" id="datepicker" name="date" value="${student.date}"><br> <br>
            <input type="submit" value="Модифицировать" onclick="modificationStudents()">
            <input type="hidden" name="id" value="${student.id}">
        </form>
    </div>
</div>
<div class="set">
    <d:if test="${error == 1}">
        <h2>
            Поля не должны быть пустыми
        </h2>
    </d:if>

</div>


</body>
</html>
