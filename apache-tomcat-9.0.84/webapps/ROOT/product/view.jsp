<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 28/12/2023
  Time: 13:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Xem Sản Phẩm</title>
</head>
<body>
<h1>Chi Tiết Sản Phẩm </h1>
<p>
    <a href="/product">Quay lại</a>
</p>
<table>
    <tr>
        <td>ID: </td>
        <td>${requestScope["product"].getId()}</td>
    </tr>
    <tr>
        <td>Tên: </td>
        <td>${requestScope["product"].getName()}</td>
    </tr>
    <tr>
        <td>Giá: </td>
        <td>${requestScope["product"].getPrice()}</td>
    </tr>
    <tr>
        <td>Email: </td>
        <td>${requestScope["product"].getDescribe()}</td>
    </tr>
    <tr>
        <td>Địa chỉ: </td>
        <td>${requestScope["product"].getProducer()}</td>
    </tr>
</table>
</body>
</html>
