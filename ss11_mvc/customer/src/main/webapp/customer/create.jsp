<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 27/12/2023
  Time: 22:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tạo Khách Hàng Mới</title>
</head>
<body>
<h1 style="color: red">Tạo Khách Hàng Mới</h1>
<p>
    <c:if text="${'message'} != null">
        <span class="message">${message}</span>
    </c:if>
</p>
<p>
    <a href="/customers">Quay lại danh sách khách hàng</a>
</p>
<form method="post">
    <fieldset>
        <legend>Thông tin khách hàng</legend>
        <table>
            <tr>
                <td>Tên: </td>
                <td>
                    <input type="text" name="name" id="name" />
                </td>
            </tr>
            <tr>
                <td>Email: </td>
                <td>
                    <input type="text" name="email" id="email" />
                </td>
            </tr>
            <tr>
                <td>Địa chỉ: </td>
                <td>
                    <input type="text" name="address" id="address" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="Tạo Khách Hàng">
                </td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
