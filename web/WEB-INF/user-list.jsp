<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lesiulol
  Date: 20.01.16
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url value="/create-user" var="createUserURL" ></c:url>
<html>
<head>
    <title>Lista uzytkownikow</title>
    <link rel="stylesheet" type="text/css" href="../css/Main.css">
</head>
<body>
<div><h1>Lista uzytkownikow</h1></div>
<table border="3" cellpadding="5">
    <tr>
        <th>Id</th>
        <th>Login</th>
        <th>E-mail</th>
    </tr>
</table>
<c:forEach items="${users}" var="user">
    <table border="3" cellpadding="5" valign="bottom">

        <tr>
            <td align="center" valign="bottom">${user.id}</td>
            <td align="center" valign="bottom">${user.login} </td>
            <td align="center" valign="bottom"> ${user.email} </td>
        </tr>
    </table>
</c:forEach>

<a href="${createUserURL}">Create User</a>


</body>
</html>
