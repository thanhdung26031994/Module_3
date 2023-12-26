<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh Sách Khách Hàng</title>
    <style>
        .container{
            border: 1px solid black;
            text-align: center;
        }
    </style>
</head>
<body>
<form action="/customer" method="get">
    <input type="submit" id="submit" value="Danh Sách">
</form>
<h1 style="text-align: left">Danh Sách Khách Hàng</h1>
<table class="container">
    <tr>
        <th style="border: 1px solid black; text-align: center;">Tên</th>
        <th style="border: 1px solid black; text-align: center;">Ngày Sinh</th>
        <th style="border: 1px solid black; text-align: center;">Địa Chỉ</th>
        <th style="border: 1px solid black; text-align: center;">Ảnh</th>
    </tr>
    <c:forEach items="${list}" var="c" varStatus="loop">
        <tr>
            <td style="border: 1px solid black; text-align: center;">${c.getName()}</td>
            <td style="border: 1px solid black; text-align: center;">${c.date}</td>
            <td style="border: 1px solid black; text-align: center;">${c.address}</td>
            <td style="text-align: center; width: 5px; border: 1px solid black; height: 5px;">
                <img src="${c.img}" alt=""/>
            </td>
        </tr>
    </c:forEach>

</table>
</body>
</html>