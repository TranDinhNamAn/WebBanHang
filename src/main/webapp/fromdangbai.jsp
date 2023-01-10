<%@ page import="vn.edu.hcmuaf.fit.model.Blog" %>
<%@ page contentType="text/html; charset =UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">

  <title>Đăng bài viết</title>
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
                <a href="addBlog" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Đăng bài viết</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="ShowAllBlogADM" class="nav-link">
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
            <h1>Bài viết giới thiệu</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Bài viết giới thiệu</li>
            </ol>
          </div>
        </div>
      </div>
    </section>
    <div class="content-wrapper">
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Sửa thông tin</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Sửa thông tin</li>
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
                <h3 class="card-title">Đăng bài</h3>
              </div>
              <form action="addBlog" method="post" role="form">
                <div class="card-body">
                  <div class="form-group">
                    <label for="examplename">Người đăng</label>
                    <input value="" name="user" type="text" class="form-control" >
                  </div>
                  <div class="form-group">
                    <label for="examplename">Tên bài viết</label>
                    <input value="" name="name" type="text" class="form-control" id="examplename" >
                  </div>
                  <div class="form-group">
                    <label >Hình Ảnh</label>
                    <input value="" name="image" type="text" class="form-control"  >
                  </div>
                  <div class="form-group">
                    <label >Ngày đăng</label>
                    <input value="" name="date" type="text" class="form-control"  >
                  </div>

                  <div class="form-group">
                    <label >Nội dung</label>
                    <input value="" name="content" type="text" class="form-control"  >
                  </div>
                  <div class="form-group">
                    <label >Tiêu đề 1</label>
                    <input value="" name="title1" type="text" class="form-control"  >
                  </div>
                  <div class="form-group">
                    <label >Nội dung</label>
                    <textarea name="content1" rows="5" type="text" class="form-control" ></textarea>
                  </div>
                  <div class="form-group">
                    <label >Tiêu đề 2</label>
                    <input value="" name="title2" type="text" class="form-control" >
                  </div>
                  <div class="form-group">
                    <label >Nội dung</label>
                    <textarea name="content2" rows="5" type="text" class="form-control"  ></textarea>
                  </div>
                  <div class="card-footer">
                    <button type="submit" class="btn btn-primary">Đăng bài</button>
                  </div>
                </div>
              </form>
            </div>
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
