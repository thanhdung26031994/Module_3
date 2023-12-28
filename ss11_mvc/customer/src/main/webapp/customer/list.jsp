<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 27/12/2023
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh Sách Khách Hàng</title>
</head>
<body>
<h1 style="color: red">Danh Sách Khách Hàng</h1>
<p>
    <a href="/customers?action=create">Tạo Mới Khách Hàng</a>
</p>
<table border="1">
    <tr>
        <th>Tên </th>
        <th>Email </th>
        <th>Địa chỉ </th>
        <th>Sửa </th>
        <th>Xoá </th>
    </tr>
    <c:forEach items="${customers}" var="customer">
        <tr>
            <td>
                <a href="/customers?action=view&id=${customer.getId()}">
                    ${customer.getName()}
                </a>
            </td>
            <td>${customer.getEmail()}</td>
            <td>${customer.getAddress()}</td>
            <td>
                <a href="/customers?action=edit&id=${customer.getId()}">
                        Sửa
                </a>
            </td>
            <td>
                <a href="/customers?action=delete&id=${customer.getId()}">
                        Xoá
                </a>
            </td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
