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
        <a class="main-link" href="\">Logout</a>
    </div>
</header>
<div class="nav-and-title">
    <a class="div-linka-disc" href="/home">На главную</a>

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
        <button class="admin-buttun">
            <a href="/DisciplineCreateContoller">Создать дисциплину</a>
        </button>
        <button class="admin-buttun">
            <a href="modif-discipline.html">Модифицировать выбранную дисциплину</a>
        </button>

        <input class="admin-buttun" type="submit" onclick="deleteDisciplines()"
               value="Удалить выбранную дисциплину">

    </div>
</div>

</body>
<form id ="deleteDisciplinesForm" action="/DisciplineDeleteController" method="post">
    <input type="hidden" id = "deleteDisciplinesHidden" name="deleteDisciplinesHidden">
</form>
</html>
