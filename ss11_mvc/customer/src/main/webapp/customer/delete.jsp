<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 27/12/2023
  Time: 23:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Xoá khách hàng</title>
</head>
<body>
<h1>Xoá khách hàng</h1>
<p>
    <a href="/customers">Quay lại danh sách khách hàng</a>
</p>
<form method="post">
    <h3>Bạn có chắc không?</h3>
    <fieldset>
        <legend>Thông tin khách hàng</legend>
        <table>
            <tr>
                <td>Tên: </td>
                <td>${requestScope["customer"].getName()}</td>
            </tr>
            <tr>
                <td>Email: </td>
                <td>${requestScope["customer"].getEmail()}</td>
            </tr>
            <tr>
                <td>Địa chỉ: </td>
                <td>${requestScope["customer"].getAddress()}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete customer"></td>
                <td><a href="/customers">Quay lại danh sách khách hàng</a></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
