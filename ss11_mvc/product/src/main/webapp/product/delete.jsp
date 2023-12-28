<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 28/12/2023
  Time: 13:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Xoá khách hàng</title>
</head>
<body>
<h1>Xoá sản phẩm</h1>
<p>
    <a href="/customers">Quay lại danh sách khách hàng</a>
</p>
<form method="post">
    <h3>Bạn có chắc không?</h3>
    <fieldset>
        <legend>Thông tin sản phẩm</legend>
        <table>

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
            <tr>
                <td><input type="submit" value="Xoá sản phẩm"></td>
                <td><a href="/product">Quay lại danh sách sản phẩm</a></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
