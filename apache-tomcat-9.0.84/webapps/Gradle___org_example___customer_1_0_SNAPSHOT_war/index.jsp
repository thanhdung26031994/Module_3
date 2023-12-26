<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh Sách Khách Hàng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<form action="customer" method="post">
    <input type="submit" id="submit" value="Display Customer"/>
</form>

<c:if test="${not empty customerList}">
    <h1 style="text-align: center">Danh Sách Khách Hàng</h1>
    <div class="d-field justify-consent-center">
        <table class="table">
            <thead>
            <tr>
                <th scope="col" style="width: 25%">Tên</th>
                <th scope="col" style="width: 25%">Ngày Sinh</th>
                <th scope="col" style="width: 25%">Địa chỉ</th>
                <th scope="col" style="width: 25%">Ảnh</th>
            </tr>
            </thead>
            <tbody>
                <c:forEach items="${ds}" var="i">
                    <tr>
                        <td>${i.getName()}</td>
                        <td>${i.getDate()}</td>
                        <td>${i.getAddress()}</td>
                        <td><img src="${i.getImg()}" alt="Ảnh Khách Hàng" style="width: 25%"/> </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</c:if>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>