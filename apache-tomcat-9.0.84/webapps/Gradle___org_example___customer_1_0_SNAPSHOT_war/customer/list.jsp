<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 27/12/2023
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer List</title>
</head>
<body>
<h1>Customers</h1>
<p>
    <a href="/customer?action=create">Tạo Khách Hàng Mới</a>
</p>
<table border="1">
    <tr>
        <td>Tên</td>
        <td>Email</td>
        <td>Address</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items="${requestScope['customers']}" var="customer">
        <tr>
            <td>
                <a href="/customers?action=view&id=${customer.getId()}">
                    ${customer.getName()}
                </a>
            </td>
            <td>${customer.getEmail()}</td>
            <td>${customer.getAddress()}</td>
            <td>
                <a href="/customers?action=edit&id=${customer.getId}">edit</a>
            </td>
            <td>
                <a href="/customers?action=delete&id=${customer.getId}">delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
