<%@ page import="vn.edu.hcmuaf.fit.model.Product" %>
<%@ page import="vn.edu.hcmuaf.fit.service.ProductServerADM" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset =UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Danh sách sản phẩm</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css1/all.min.css">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <link rel="stylesheet" href="css1/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    <aside class="main-sidebar sidebar-dark-primary elevation-4">

        <div class="sidebar">
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                <div class="image">
                    <img src="image/AdminLTELogo.png" class="img-circle elevation-2" alt="User Image">
                </div>
                <div class="info">
                    <a href="#" class="d-block">Admin</a>
                </div>
            </div>

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
                                <a href="./fromdsbaiviet.html" class="nav-link">
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
                                <a href="addProduct.jsp" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Thêm sản phẩm</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="./removeProduct.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Xóa sản phẩm</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="./updateProduct.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Sửa thông tin</p>
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
                                <a href="./newProduct.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Sản phẩm mới </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="listproductadmin" class="nav-link">
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
                                <a href="./newUser.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Khách hàng mới </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="listUser.html" class="nav-link">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>Danh sách khách hàng</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item has-treeview">
                        <a href="./updateUserAdmin.html" class="nav-link">
                            <i class="nav-icon fas fa-edit"></i>
                            <p>
                                Cập nhật thông tin admin
                            </p>
                        </a>
                    </li>
                    <li class="nav-item has-treeview">
                        <a href="#" class="nav-link">
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
                        <h1>Danh sách sản phẩm</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Danh sách sản phẩm</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Danh sách sản phẩm</h3>

                        <div class="card-tools">
                            <div class="input-group input-group-sm" style="width: 150px;">
                                <input type="text" name="table_search" class="form-control float-right"
                                       placeholder="Search">

                                <div class="input-group-append">
                                    <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <table id="example2" class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Tên sản phẩm</th>
                                <th>Hình ảnh</th>
                                <th>Giá thuê</th>
                                <th>Nút lệnh</th>
                            </tr>
                            </thead>
                            <tbody>
                                <%List<Product> list = (List<Product>) request.getAttribute("list3");%>
                                <%
                            for (Product p:list
                            ) {
                        %>
                            <tr>
                                <td><%=p.getId()%>
                                </td>
                                <td><%=p.getName()%>
                                </td>
                                <td><img src="<%=p.getImg()%>" style="width: 50px"></td>
                                <td><%=p.getPrice()%>/Ngày</td>
                                <td>
                                    <a href="delete?id=<%=p.getId()%>">
                                        <button class="btn btn-danger">Xóa sản phẩm</button>
                                    </a>
                                    <a href="chitiet">
                                        <button class="btn btn-dark">Xem chi tiết</button>
                                    </a>
                                </td>
                            </tr>
                                <%}%>

                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<footer class="main-footer">
</footer>
<script src="js1/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="js1/bootstrap.bundle.min.js"></script>
<script src="js1/jquery.dataTables.js"></script>
<script src="js1/dataTables.bootstrap4.min.js"></script>

<!-- AdminLTE App -->
<script src="js1/adminlte.min.js"></script>
<script src="js1/demo.js"></script>
<script>
    $(function () {
        $('#example2').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false,
            "responsive": true,
        });
    });
</script>
</body>
</html>
