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
    <title>Профиль</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap');
        <%@include file="../css/profile.css"%>
        <%@include file="../css/style.css"%>
    </style>
</head>
<body>
<%@include file="navbar.jsp" %>
<div>
    <div class="container">
        <div class="profile_wrapper">
            <div class="profile">
                <img class="profile_img" src="images/img.png">
                <div class="data">
                    <div class="data_line">
                        <p class="title">ID </p>
                        <p class="value">${userInfo.id}</p>
                    </div>
                    <div class="data_line">
                        <p class="title">Логин </p>
                        <p class="value">${userInfo.login}</p>
                    </div>
                    <div class="data_line">
                        <p class="title">Пароль </p>
                        <p class="value">${userInfo.password}</p>
                    </div>
                    <div class="data_line">
                        <p class="title">День рождения </p>
                        <p class="value">${userInfo.birthday}</p>
                    </div>
                    <div class="data_line">
                        <p class="title"> Роль</p>
                        <p class="value">${userInfo.role}</p>
                    </div>
                    <a class="return" href="/users">Назад</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
