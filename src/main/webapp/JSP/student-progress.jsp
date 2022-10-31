
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>students-progress</title>
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
    <a class="div-linka" href="/home">На главную</a>
    <a class="div-linkaa" href="/student">Назад</a>
    <h2>Отображена успеваемость для следующего студента:</h2>
</div>

<div class="main-conteiner">

    <div class="main-table">
        <table class="table">
            <tr class="header-table">
                <th>Фамилия</th>
                <th>Имя</th>
                <th>Группа</th>
                <th>Дата поступления</th>
            </tr>

                <tr>
                    <th>${student.surname}</th>
                    <th>${student.name}</th>
                    <th>${student.group}</th>
                    <th><fmt:formatDate value="${student.date}" pattern="dd/MM/yyyy"></fmt:formatDate> </th>
                </tr>

        </table>
    </div>

    <div class="midle-table">
        <table class="table-discipline">
            <tr class="header-table">
                <th>Дисциплина</th>
                <th>Оценка</th>
            </tr>
            <c:forEach items ="${allDisciplinesMark}" var="dm">
                <tr>
                    <th>${dm.disciplineName}</th>
                    <th>${dm.markName}</th>
                </tr>
            </c:forEach>

        </table>

        <div class="right-table">
            <table class="table-disciplin">
                <form class="term-form" action="" method="get">

                    <p class="one">
                        <label for="term">Выберите семестр</label> &nbsp;
                        <input type="hidden" name ="progresStudentHidden" value="${student.id}">
                        <select class="one" name="term" id="term">&nbsp;
                            <c:forEach items="${allTerms}" var="t">
                                <option value="${t.id}"
                                        <c:if test="${t eq firstTerm}">
                                            selected
                                        </c:if>
                                >${t.name}</option>
                            </c:forEach>
                        </select>&nbsp;
                        <input class="buttons" type="submit" value="Выбрать">
                    </p>
                    <br>
                    <p class="two"> Средняя оценка за семестр <fmt:formatNumber type = "number" maxIntegerDigits = "3" value = "${aMark}" /> баллa

                    </p>
                </form>

        </div>
    </div>

</div>




</body>
</html>
