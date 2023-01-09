<%@ page import="vn.edu.hcmuaf.fit.model.Brand" %>
<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Product" %>
<%@ page contentType="text/html; charset =UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AddProduct</title>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css1/all.min.css">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css1/ionicons.min.css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <link rel="stylesheet" href="css1/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
        <div class="sidebar">
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                    data-accordion="false">
                    <li class="nav-item has-treeview">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fas fa-copy"></i>
                            <p>
                                Quản lý bài viết
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="./fromdangbai.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Đăng bài viết</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="fromdsbaiviet.jsp" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Danh sách bài viết</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item has-treeview">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fas fa-motorcycle"></i>
                            <p>
                                Quản lý sản phẩm
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="addProduct" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Thêm sản phẩm</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item has-treeview">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fas fa-chart-pie"></i>
                            <p>
                                Danh mục sản phẩm
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="ShowAllProduct">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Danh sách sản phẩm</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item has-treeview">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fas fa-user"></i>
                            <p>
                                Quản lý user
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="ListUser" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Danh sách khách hàng </p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item has-treeview">
                        <a href="listorder" class="nav-link">
                            <p>
                                Hóa đơn
                            </p>
                        </a>
                    </li>
                    <li class="nav-item has-treeview">
                        <a href="dangxuat" class="nav-link">
                            <i class="nav-icon fas fa-arrow-right"></i>
                            <p>
                                Đăng xuất
                            </p>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </aside>

    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Thêm sản phẩm</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Thêm sản phẩm</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Thêm sản phẩm</h3>
                        </div>
                        <form role="form" action="addProduct" method="post">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="examplename">Tên sản phẩm</label>
                                    <input type="text"name="name" class="form-control" id="examplename" placeholder="Tên sản phẩm">
                                </div>
                                <div class="form-group">
                                    <label for="examplename">Hình ảnh</label>
                                    <input type="text" name="image" class="form-control"  placeholder="Hình ảnh">
                                </div>

                                <div class="form-group">
                                    <label for="examplprice">Giá thuê</label>
                                    <input type="text" name="price" id="examplprice" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="examplprice">isNew</label>
                                    <select name="isNew" class="form-select" >

                                        <option value="1">True</option>
                                        <option value="0">False</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Loại sản phẩm</label>
                                    <select name="brandID" class="form-select" >
                                        <%List<Brand> list = (List<Brand>) request.getAttribute("ListBrand");%>
                                       <% for (Brand p:list
                                        ) {
                                        %>
                                    <option value="<%=p.getID()%>"><%=p.getName()%></option>
                                        <%}%>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="examplprice">Quãng Đường</label>
                                    <input type="text" name="distance"  placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="examplprice">Động cơ</label>
                                    <input type="text" name="gear"  placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="examplprice">Ngăn chứa đồ</label>
                                    <input type="text" name="storage"  placeholder="">
                                </div>
                                <div class="form-group">
                                    <label for="examplprice">Dung tích Xăng</label>
                                    <input type="text" name="fuel"  placeholder="">
                                </div>
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Thêm sản phẩm</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="main-footer">
    </footer>
</div>
<script src="js1/jquery.min.js"></script>
<script src="js1/bootstrap.bundle.min.js"></script>
<script src="js1/adminlte.min.js"></script>
<script src="js1/demo.js"></script>
</body>
</html>
