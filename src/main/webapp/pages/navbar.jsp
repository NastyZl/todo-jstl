<%--
  Created by IntelliJ IDEA.
  User: astop
  Date: 31.01.2024
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Навигационная панель</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap');
        <%@include file="../css/navbar.css"%>
        <%@include file="../css/style.css"%>
    </style>
</head>
<body>
<header class="header">
    <div class="container">
        <nav class="nav">
                <c:choose>
                    <c:when test="${user != null}">
                        <div class="url" id="left">
                            <ul class="menu">
                                <li class="nav-items">
                                    <a href="#" class="nav-link">Профиль</a>
                                </li>
                                <li class="nav-items">
                                    <a href="#" class="nav-link">Список дел</a>
                                </li>
                            </ul>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="url" id="left"></div>
                    </c:otherwise>
                </c:choose>
            <div class="logo">
                <img src="images/logo.svg" alt="логотип" class="logo-img">
            </div>
            <div class="url" id="right">
                <a href="/logout" class="nav-items">Выйти</a>
            </div>

        </nav>
    </div>
</header>
</body>
</html>
