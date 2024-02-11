<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Регистрация</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap');
        <%@include file="../css/registr.css"%>
        <%@include file="../css/style.css"%>
    </style>
</head>
<body>
<%@include file="navbar.jsp" %>
<form action="/registr" method="POST">
    <div class="container">
        <div class="registr_wrapper">
            <div class="registr_form">
                <div class="title">Регистрация пользователя</div>

                <div class="input-box">
                    <input type="text" placeholder="Введите логин" name="login" required>
                </div>

                <div class="input-box">
                    <input type="password" placeholder="Введите пароль" name="password" required>
                </div>

                <div class="input-box">
                    <input type="date" placeholder="Введите дату рождения" name="birthday" required>
                </div>

                <div class="input-box">
                    <select class="select-role" name="role">
                        <c:forEach var="role" items="${userRole}">
                            <option value="${role}">${role}</option>
                        </c:forEach>
                    </select>
                </div>
                <button type="submit" class="btn">Зарегистрировать</button>
            </div>
        </div>
    </div>
</form>
</body>
</html>
