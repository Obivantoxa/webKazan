<%--
  Created by IntelliJ IDEA.
  User: Nekr
  Date: 001 01.10.22
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Students list</title>
    <link rel="stylesheet" href="../resources/styles/style.css">

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<div class="nav-and-title1">

    <a class="div-linkaa1" href="/home">Назад</a>

</div>

<div class="off">

    <div class="col" id="ifoff"></div>
    <div class="row">
        <button class="admin-buttun">
            <a href="students-progress.html">Посмотреть успеваемость выбранного студента</a>
        </button>
        <button class="admin-buttun"><a href="/create-student">Создать студента</a></button>
    </div>
    <div class="row">
        <button class="admin-buttun"><a href="modif-student.html">Модифицировать выбранного студента</a></button>
        <button class="admin-buttun">Удалить выбранных студентов</button>
    </div>
</div>

<div class="main-conteiner">
    <h3>Список студентов</h3>
    <div class="main-table">
        <table class="table">
            <tr class="header-table">
                <th>Выбрано</th>
                <th>Фамилия</th>
                <th>Имя</th>
                <th>Группа</th>
                <th>Дата поступления</th>
            </tr>
            <c:forEach items="${studentsList}" var="st">
                <tr>
                    <th><input type="checkbox" checked="">
                        <label for=""></label></th>
                    <th>${st.surname}</th>
                    <th>${st.name}</th>
                    <th>${st.group}</th>
                    <th>${st.date}</th>
                </tr>
            </c:forEach>

        </table>
    </div>
</div>


</body>
</html>





