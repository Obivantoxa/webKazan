<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>modif-discipline</title>
    <link rel="stylesheet" href="styles/styles.css">
</head>
<body>
<header>
    <div class="container">
        <h2 class="main-title">
            Система управления студентами и их успеваимостью
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
    <a class="div-linka" href="title page.html">На главную</a>
    <a class="div-linkaa" href="disciplines-list.html">Назад</a>
    <h2>Для того чтобы модифицировать  дисциплину введите новое значение поля и нажмите кнопку "Применить".</h2>
</div>



<div class="form">
    <div class="set">
        <label class="name-field" for="discipline-name">Название</label>
        <input class="text-field" id="discipline-name"> <br> <br>
        <input type="submit" value="Применить">
    </div>


</div>

</body>
</html>



