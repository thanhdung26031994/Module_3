<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 07/01/2024
  Time: 21:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chỉnh sửa</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<h1 class="text-center mb-4">Chỉnh sửa thông tin</h1>
<form action="/farms" method="post" class="row justify-content-center mt-4">
    <input type="hidden" name="action" value="edit">
    <div class="form-group">
        <label for="txtId">ID Chuồng</label>
        <input type="text" class="form-control" name="idCage" id="txtId" value="${cage.idCage}">
    </div>
    <div class="form-group">
        <label for="txtName">Loại Chuồng</label>
        <input type="text" class="form-control" name="typeCage" id="txtName" value="${cage.typeCage}">
    </div>
    <div class="form-group">
        <label for="txtPoint">Sức chứa</label>
        <input type="text" class="form-control" name="capacity" id="txtPoint" value="${cage.capacity}">
    </div>
    <div class="form-group mt-2">
        <button class="btn btn-success" role="button" type="submit">Lưu</button>
        <button class="btn btn-warning" role="button">Cancel</button>
    </div>
</form>
</body>
</html>

