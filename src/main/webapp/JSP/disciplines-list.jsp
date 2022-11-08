<%--
  Created by IntelliJ IDEA.
  User: Nekr
  Date: 007 07.10.22
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>disciplines-list</title>
    <link rel="stylesheet" href="../resources/styles/style.css">
    <script src="../resources/js/functions.js">
    </script>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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

    <h3 class="titleh3">Список дисциплин</h3>

</div>

<div class="main-conteinera">
    <div class="ms">
        <table class="t">
            <tr class="header-table">
                <th>

                </th>
                <th>Наименование дисциплины</th>
            </tr>
            <c:forEach items="${allDisciplines}" var="st">
                <tr>
                    <th>
                        <input name="idDisciplines" type="checkbox" value ="${st.id}" >
                        <label for="">
                        </label>
                    </th>
                    <th>${st.name}</th>
                </tr>
            </c:forEach>


        </table>
    </div>
    <div class="msa">
        <c:choose>
            <c:when test="${role eq 1 or role eq 3}">
                <button class="admin-buttun">
                    <a href="/DisciplineCreateContoller">Создать дисциплину</a>
                </button>
                <button class="admin-buttun">
                    <a href="modif-discipline.html">Модифицировать выбранную дисциплину</a>
                </button>

                <input class="admin-buttun" type="submit" onclick="deleteDisciplines()"
                       value="Удалить выбранную дисциплину">
            </c:when>
        </c:choose>
    </div>
</div>

</body>
<form id ="deleteDisciplinesForm" action="/DisciplineDeleteController" method="post">
    <input type="hidden" id = "deleteDisciplinesHidden" name="deleteDisciplinesHidden">
</form>
</html>
