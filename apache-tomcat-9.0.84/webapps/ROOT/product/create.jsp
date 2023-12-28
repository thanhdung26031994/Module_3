<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 27/12/2023
  Time: 23:41
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tạo Sản Phẩm Mới</title>

</head>
<body>
<h1 style="color: red">Tạo Sản Phẩm Mới</h1>
<p>
    <c:if test="${'message'} != null">
        <span class="message">${message}</span>
    </c:if>
</p>
<p>
    <a href="/product">Quay lại danh sách sản phẩm</a>
</p>
<form method="post">
    <fieldset>
        <legend>Thông tin sản phẩm</legend>
        <table>
            <tr>
                <td>ID: </td>
                <td>
                    <input type="text" name="id" id="id" />
                </td>
            </tr>
            <tr>
                <td>Tên: </td>
                <td>
                    <input type="text" name="name" id="name" />
                </td>
            </tr>
            <tr>
                <td>Giá: </td>
                <td>
                    <input type="text" name="price" id="price" />
                </td>
            </tr>
            <tr>
                <td>Mô tả: </td>
                <td>
                    <input type="text" name="describe" id="describe" />
                </td>
            </tr>
            <tr>
                <td>Nhà sản phẩm: </td>
                <td>
                    <input type="text" name="producer" id="producer" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="Tạo Sản Phẩm">
                </td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
