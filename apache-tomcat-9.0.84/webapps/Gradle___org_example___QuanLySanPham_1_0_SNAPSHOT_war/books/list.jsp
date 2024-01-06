<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 04/01/2024
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="hf_css.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <title>Hello World</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>

<body>
<div class="container-fluid">
    <div class="row">
        <div class="cc-announcement" style="text-align: center;background: black">
            <a data-cc-animate-click="">
                <div class="cc-announcement__inner" style="color: white">
                    MIỄN PHÍ VẬN CHUYỂN TOÀN QUỐC
                </div>
            </a>
        </div>
        <nav class="navbar navbar-expand-lg bg-white px-4 mt-2" style="padding:0">
            <div class="container-fluid ">
                <div>
                    <a class="navbar-brand" href="#">
                        <img src="https://www.shutterstock.com/image-vector/leaf-book-logo-600nw-1768607174.jpg"
                             height="130px" width="200px" /></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                    </button>

                </div>
                <div style="margin: 0 auto">
                    <div class="collapse navbar-collapse ">
                        <nav>
                            <ul>
                                <li href="#">Trang Chủ</li>
                                <li href="#">Thể loại</li>
                                <li href="#">Tin tức</li>
                                <li href="#">Trợ giúp</li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div style="left: 0">
                    <div class="collapse navbar-collapse ">
                        <form id="search-box">
                            <input type="text" id="search-text" placeholder="Bạn muốn tìm gì ?" required>
                            <button id="search-btn"><i class="fa-solid fa-magnifying-glass"
                                                       style="color: white"></i>
                            </button>
                        </form>
                        <ul
                                style="margin: 0;font-weight: 500; font-size: 15px;color: rgb(119,119,119);padding:30px 20px">
                            <span-1><i class="fa-solid fa-cart-shopping" style="font-size: 20px"></i> Giỏ Hàng
                            </span-1>
                            <span-1 style="margin-right: 15px">
                                <i class="fa-solid fa-user" style="font-size: 20px"></i> Đăng Nhập
                            </span-1>

                        </ul>
                    </div>

                </div>
            </div>
        </nav>
    </div>
    <!-- content -->

    <!-- slide bar -->
    <div class="offcanvas offcanvas-start w-25" tabindex="-1" data-bs-keyboard="false"
         data-bs-backdrop="false">
        <div class="offcanvas-header">
            <h6 class="offcanvas-title d-none d-sm-block">Menu</h6>
            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas"
                    aria-label="Close"></button>
        </div>
        <div class="offcanvas-body px-0">
            <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-start" id="menu">
                <li class="nav-item">
                    <a href="ad_QL_san_pham.html" class="nav-link text-truncate">
                        <i class="fs-5"></i><span class="ms-1 d-none d-sm-inline" style="color: black;"> Quản lý
                                sách</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="ad_QL_don_hang.html" class="nav-link text-truncate">
                        <i class="fs-5"></i><span class="ms-1 d-none d-sm-inline" style="color: black;"> Quản đơn
                                hàng</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link text-truncate">
                        <i class="fs-5"></i><span class="ms-1 d-none d-sm-inline" style="color: black;"> Quản lý
                                loại sản phẩm</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link text-truncate">
                        <i class="fs-5"></i><span class="ms-1 d-none d-sm-inline" style="color: black;"> Quản lý
                                khách hàng</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col p-4">
                <!-- toggler -->
                <button class="btn float-end" data-bs-toggle="offcanvas" data-bs-target="#offcanvas" role="button">
                    <i style="color: black;" class="bi bi-arrow-right-square-fill fs-3" data-bs-toggle="offcanvas"
                       data-bs-target="#offcanvas">Quản lý</i>
                </button>

            </div>
        </div>
    </div>

    <!-- primay -->
    <div class="row mx-5">
        <div class="col-12 d-flex justify-content-center align-items-center">
            <h1>Quản lý chi tiết sản phẩm</h1>
        </div>
    </div>
    <div class="row d-flex mx-3">
        <div class="col-9">
            <a class="btn btn-outline-dark" href="#" role="button">Thêm</a>
        </div>
        <div class="col-3">
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-secondary" type="submit">Search</button>
            </form>
        </div>
    </div>
    <div class="row d-flex justify-content-center align-items-center mt-2 mx-3">
        <div class="col-12">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th scope="col" class="d-flex align-items-center">STT</th>
                    <th scope="col">ID Sách</th>
                    <th scope="col">Mã sản phẩm</th>
                    <th scope="col">Giá</th>
                    <th scope="col">Hình ảnh</th>
                    <th scope="col">Mô tả</th>
                    <th scope="col">Thể loại</th>
                    <th scope="col">Tác giả</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td>B001</td>
                    <td>OTRR</td>
                    <td>90k</td>
                    <td><img src="https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcT_nm_I5w4yaBoKTH8EHm7i4_Zv8DgRFJ9p9JTcZowyGK3YEMaNEom8ZVOKm2sx29hYkk3f_BWwPyHDsfy0F-Y4PS5WmxGN3-e3AVtr_Cvz9oVINK6GRPApKQ&usqp=CAc"
                             class="img-fluid" style="width: 50px; height: 70px;" alt="cc"></td>
                    <td>cha</td>
                    <td>tiểu thuyết</td>
                    <td>Mario Puzo</td>
                    <td><a class="btn btn-outline-dark" href="#" role="button">Sửa</a></td>
                    <td><a class="btn btn-outline-dark" href="#" role="button">Xóa</a></td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td>B001</td>
                    <td>OTRR</td>
                    <td>90k</td>
                    <td><img src="https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTi6GLCgibPJvDlGbRRlLKrXjjYYbY3e58hQX1xh0Z7T_Y1lEuR0Mv9eILgGswgYmSr26fq9i-xtamnUuwA0c2YVMYfEJiHY61G9F4lAz4&usqp=CAc"
                             class="img-fluid" style="width: 50px; height: 70px;" alt="cc"></td>
                    <td>cha</td>
                    <td>tiểu thuyết</td>
                    <td>Mario Puzo</td>
                    <td><a class="btn btn-outline-dark" href="#" role="button">Sửa</a></td>
                    <td><a class="btn btn-outline-dark" href="#" role="button">Xóa</a></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>

    <!-- footer -->

    <body_2>
        <footer style="background: black">
            <div class="waves">
                <div class="wave" id="wave1"></div>
                <div class="wave" id="wave2"></div>
                <div class="wave" id="wave3"></div>
                <div class="wave" id="wave4"></div>
            </div>
            <ul class="social_icon">
                <li><a href="#"><ion-icon name="logo-facebook"></ion-icon></a></li>
                <li><a href="#"><ion-icon name="logo-twitter"></ion-icon></a></li>
                <li><a href="#"><ion-icon name="logo-instagram"></ion-icon></a></li>
                <li><a href="#"><ion-icon name="mail-outline"></ion-icon></a></li>
                <li><a href="#"><ion-icon name="logo-youtube"></ion-icon></a></li>
            </ul>
            <ul class="menu">
                <li><a href="#">Trang chủ</a></li>
                <li><a href="#">Tin tức </a></li>
                <li><a href="#">Dịch vụ</a></li>
                <li><a href="#">Đội ngũ</a></li>
                <li><a href="#">Hỗ trợ</a></li>
            </ul>
            <p style="color: white">©Leaf Book || Được xây dựng năm 2020</p>
        </footer>
        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>


    </body_2>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>

</html>
