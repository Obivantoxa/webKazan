<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Students list</title>
    <link rel="stylesheet" href="../resources/styles/style.css">
    <script src="../resources/js/functions.js">
    </script>
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
<div class="nav-and-title1">

    <a class="div-linkaa1" href="/">Назад</a>

</div>

<div class="off">

    <div class="col" id="ifoff"></div>
    <div class="row">
        <input class="admin-buttun" type="submit" onclick="progresStudent()"
               value="Посмотреть успеваемость выбранного студента" class="button">
        <c:choose>
            <c:when test="${role eq 1 or role eq  3}">
                <button class="admin-buttun"><a href="/create-student">Создать студента</a></button>
            </c:when>
        </c:choose>
    </div>
    <div class="row">
        <c:choose>
            <c:when test="${role eq 1 or role eq  3}">
                <input class="admin-buttun" type="submit" onclick="modificationStudent()"
                       value="Модифицировать выбранного студента" class="button">
                <input class="admin-buttun" type="submit" onclick="deleteStudents()"
                       value="Удалитьвыбранных студентов ">
            </c:when>
        </c:choose>
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
                    <th><input name="idStudent" type="checkbox" value="${st.id}">
                        <label for=""></label></th>
                    <th>${st.surname}</th>
                    <th>${st.name}</th>
                    <th>${st.group}</th>
                    <th><fmt:formatDate value="${st.date}" pattern="dd/MM/yyyy"></fmt:formatDate></th>
                </tr>
            </c:forEach>

        </table>
    </div>
</div>


</body>
<form id="deleteStudentForm" action="/StudentDeleteController" method="post">
    <input type="hidden" id="deleteStudentHidden" name="deleteStudentHidden">
</form>

<form id="modificationStudentForm" action="/StudentModificController" method="get">
    <input type="hidden" id="modificationStudentHidden" name="modificationStudentHidden">
</form>

<form id="progresStudentForm" action="/student-progress" method="get">
    <input type="hidden" id="progresStudentHidden" name="progresStudentHidden">
</form>


</html>





