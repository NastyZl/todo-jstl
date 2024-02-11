<%--
  Created by IntelliJ IDEA.
  User: astop
  Date: 31.01.2024
  Time: 19:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>Авторизация</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap');
        <%@include file="../css/login.css"%>
        <%@include file="../css/style.css"%>

    </style>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="login">
    <div class="container">
        <div class="login_wrapper">
        <div class="login_form">
            <form method="post" action="login">
                <div class="title">Вход</div>
                <div class="input-box">
                    <input type="text" placeholder="Введите логин..." name="login" required>
                    <i class='bx bxs-user' ></i>
                </div>

                <div class="input-box">
                    <input type="password" placeholder="Введите пароль.." name="password" required>
                    <i class='bx bxs-lock-alt'></i>
                </div>
                <button type="submit" class="btn">Войти</button>

            </form>
        </div>

        </div>
    </div>
</div>
</body>
</html>
