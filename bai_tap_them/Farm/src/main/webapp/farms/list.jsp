
<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 05/01/2024
  Time: 13:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý sản phẩm rau củ quả</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container">
    <h1 class="my-3">Quản lý Chuồng</h1>
    <div class="row d-flex mx-3">
        <div class="col-9">
            <a class="btn btn-warning" role="button" href="/farms?action=create">Thêm mới</a>
        </div>
        <div class="col-3">
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-secondary" type="submit">Tìm</button>
            </form>
        </div>
    </div>
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Loại Chuồng</th>
            <th scope="col">Sức chứa</th>

            <th scope="col">Chỉnh sửa</th>
            <th scope="col">Xoá</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${cageList}" var="cage">
            <tr>
                <td>${cage.idCage}</td>
                <td>${cage.typeCage}</td>
                <td>${cage.capacity}</td>
                <td>
                    <a class="btn btn-warning" href="/farms?action=edit&idCage=${cage.idCage}" role="button">Chỉnh
                        sửa</a>
                </td>
                <td>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"
                            onclick="handleShowDelete('${cage.idCage}', '${cage.typeCage}')">
                        Xoá
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div id="content-delete"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Quay lại</button>
                    <a href="" id="confirm-delete" type="button" class="btn btn-danger" data-mdb-ripple-init>Xoá</a>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function handleShowDelete(idCage, typeCage) {
        document.getElementById("content-delete").innerText = "Bạn chắc chắn muốn xóa " + typeCage + " không?";
        document.getElementById("confirm-delete").href = "/farms?action=delete&idCage=" + idCage;
    }
</script>
</body>
</html>
