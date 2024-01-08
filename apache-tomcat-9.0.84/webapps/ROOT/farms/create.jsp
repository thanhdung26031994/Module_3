<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 05/01/2024
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm mới chuồng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container">

    <div class="row justify-content-center mt-4">
        <form class="col-md-6" action="/farms?action=create" method="post">
            <h1 class="">Thêm mới chuồng</h1>
            <div class="form-group">
                <label for="txtId">ID Chuồng</label>
                <input type="text" class="form-control" name="idCage" id="txtId">
            </div>
            <div class="form-group">
                <label for="txtName">Loại Chuồng</label>
                <input type="text" class="form-control" name="typeCage" id="txtName">
            </div>
            <div class="form-group">
                <label for="txtPoint">Sức chứa</label>
                <input type="text" class="form-control" name="capacity" id="txtPoint">
            </div>
            <div class="form-group mt-2">
                <button class="btn btn-success" role="button" type="submit">Create</button>
                <button class="btn btn-warning" role="button">Cancel</button>
            </div>
        </form>

    </div>
</div>
</body>
</html>
