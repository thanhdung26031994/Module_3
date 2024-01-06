<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 05/01/2024
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm mới rau củ quả</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<h1 class="text-center mb-4">Thêm rau củ quả</h1>
<div class="container-fluid">
    <form id="customerForm" action="/fruits?action=create" method="post">
        <div class="form-group row-cols-6">
            <label class="col-sm-1 col-form-label">Mã Hàng Hoá</label>
            <div class="col-sm-9">
                <input type="text" class="form-control" id="id" name="id" required>
            </div>
        </div>
        <div class="form-group row-cols-6">
            <label class="col-sm-1 col-form-label">Tên Hàng Hoá</label>
            <div class="col-sm-9">
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
        </div>
        <div class="form-group row-cols-6">
            <label class="col-sm-1 col-form-label">Đơn Vị Tính</label>
            <div class="col-sm-9">
                <input type="text" class="form-control" id="unit" name="unit" required>
            </div>
        </div>
        <div class="form-group row-cols-6">
            <label class="col-sm-1 col-form-label">Giá</label>
            <div class="col-sm-9">
                <input type="text" class="form-control" id="price" name="price" required>
            </div>
        </div>
        <div class="form-group row-cols-6">
            <label class="col-sm-1 col-form-label">Loại Hàng Hoá</label>
            <div class="col-sm-9">
                <
                <input type="text" class="form-control" id="idType" name="idType" required>
            </div>
        </div>
<%--        <div class="form-group row-cols-6">--%>
<%--            <label class="col-sm-1 col-form-label">Ngày Thu Hoạch</label>--%>
<%--            <div class="col-sm-9">--%>
<%--                <input type="text" class="form-control" id="date" name="date" required>--%>
<%--            </div>--%>
<%--        </div>--%>
        <br>
        <div class="form-group row-cols-6">
            <div class="col-sm-12">
                <button type="submit" class="btn btn-primary btn-block">Lưu thông tin</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
