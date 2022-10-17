<%--
  Created by IntelliJ IDEA.
  User: Nekr
  Date: 001 01.10.22
  Time: 15:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <a class="main-link" href="\">Logout</a>
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