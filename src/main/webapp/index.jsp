<%--
  Created by IntelliJ IDEA.
  User: Nekr
  Date: 001 01.10.22
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Title page</title>
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
<%--        <a class="main-link" href="/login">Login</a>--%>
<%--        <br>--%>
<%--        <br>--%>
<%--        <a class="main-link" href="/logout">Logout</a>a--%>
    </div>
</header>
<div class="main-conteiner">
    <div class="main">
        <div class="div-link ">
            <a  href="/student">Студенты</a>
        </div>
        <div class="div-link ">
            <a href="/DisciplinesListController">Дисциплины</a>
        </div>
        <div class="div-link ">
            <a href="/TermsListController">Семестры</a>
        </div>
    </div>
</div>



</body>
</html>