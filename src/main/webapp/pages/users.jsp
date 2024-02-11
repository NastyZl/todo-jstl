<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Пользователи</title>
    <style>
        <%@include file="../css/style.css"%>
        <%@include file="../css/users.css"%>
    </style>
</head>
<body>
<%@include file="navbar.jsp" %>

<div>
    <div class="container">
        <table class="table">
            <thred>
                <tr>
                    <th>id</th>
                    <th>login</th>
                    <th>birthday</th>
                    <th>role</th>
                    <th></th>
                </tr>
            </thred>
            <c:forEach items="${users}" var="user">
            <tbody>
                <tr>
                    <td>${user.id}</td>
                    <td>${user.login}</td>
                    <td>${user.birthday}</td>
                    <td>${user.role}</td>
                    <td><a href="/profile?id=${user.id}">show page</a></td>
                </tr>
            </tbody>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
