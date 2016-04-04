<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lesiulol
  Date: 28.01.16
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url value="/add-book" var="addBookURL"/>
<c:url value="/edit-book" var="editBookURL" />
<c:url value="/delete-book" var="deleteBookURL" />
<html>
<head>
    <title>Books</title>
    <link rel="stylesheet" type="text/css" href="../css/Main.css">
</head>
<body>

<div><h1>Lista Ksiazek</h1></div>

<table border="3" cellpadding="5">
    <tr>
        <th>Id</th>
        <th>Autor</th>
        <th>Title</th>
        <th>Year</th>
        <th>Action</th>
    </tr>
</table>
<table border="3" cellpadding="5" valign="bottom">
<c:forEach items="${books}" var="book">


        <tr>
            <td align="center" valign="bottom">${book.id}</td>
            <td align="center" valign="bottom">${book.autor} </td>
            <td align="center" valign="bottom"> ${book.title} </td>
            <td align="center" valign="bottom"> ${book.year} </td>
            <td align="center" valign="bottom">
                <a href ="${editBookURL}/${book.id}">Edit</a>
            <br>
                <a href ="${deleteBookURL}/${book.id}">Delete</a>
            </td>
        </tr>

</c:forEach>
    </table>

<a href="${addBookURL}">Add Book</a>
</body>
</html>