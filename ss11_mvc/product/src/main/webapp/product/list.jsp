<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 27/12/2023
  Time: 23:47
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh Sách Sản Phẩm</title>
</head>
<body>
<h1 style="color: red">Danh Sách Sản Phẩm</h1>
<p>
    <a href="/product?action=create">Tạo Mới Sản Phẩm</a>
</p>
<h4 style="color: red">Nhập tên muốn tìm</h4>
<form action="/product">
    <input type="text" name="name">
    <button>Tìm kiếm</button>
</form>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Tên </th>
        <th>Giá </th>
        <th>Mô Tả </th>
        <th>Nhà Sản Xuất</th>
        <th>Sửa </th>
        <th>Xoá </th>
    </tr>
    <c:forEach items="${products}" var="product">
        <tr>
            <td>
                <a href="/product?action=view&id=${product.getId()}">${product.getId()}</a>
            </td>
            <td>${product.getName()}</td>
            <td>${product.getPrice()}</td>
            <td>${product.getDescribe()}</td>
            <td>${product.getProducer()}</td>
            <td>
                <a href="/product?action=edit&id=${product.getId()}">
                    Sửa
                </a>
            </td>
            <td>
                <a href="/product?action=delete&id=${product.getId()}">
                    Xoá
                </a>
            </td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
