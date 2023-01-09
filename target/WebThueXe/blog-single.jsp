<%@ page import="vn.edu.hcmuaf.fit.model.Blog" %>
<%@ page contentType="text/html; charset =UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bài viết</title>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
          rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">


    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">Thue<span>XeMay</span></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item "><a href="index.jsp" class="nav-link">Trang chủ</a></li>
                <li class="nav-item"><a href="about.jsp" class="nav-link">Giới thiệu</a></li>
                <li class="nav-item"><a href="pricing.jsp" class="nav-link">Bảng giá</a></li>
                <li class="nav-item"><a href="car.jsp" class="nav-link">Xe máy</a></li>
                <li class="nav-item active"><a href="blog.jsp" class="nav-link">Bài viết</a></li>
                <li class="nav-item"><a href="contact.jsp" class="nav-link">Liên hệ</a></li>
                <li class="nav-item"><a href="login.jsp" class="nav-link">Đăng nhập</a></li>
                <li class="nav-item"><a href="cart.jsp" class="nav-link"><p style="margin-top: 6px"
                                                                            class="icon icon-cart-plus"></p></a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- END nav -->
<% Blog b = (Blog) request.getAttribute("detail");
%>
<section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bl1.jpg');"
         data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
            <div class="col-md-9 ftco-animate pb-5">
                <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Trang chủ<i
                        class="ion-ios-arrow-forward"></i></a></span>
                    <span class="mr-2"><a href="blog.jsp">Bài viết <i class="ion-ios-arrow-forward"></i></a></span>
                <h1 class="mb-3 bread"><%=b.getName()%></h1>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-degree-bg">
    <div class="container">
        <div class="row">
            <div class="col-md-8 ftco-animate">
                <h2 class="mb-3"><%=b.getName()%></h2>

                <p><%=b.getCotent()%></p>

                <h2 class="mb-3 mt-5"><%=b.getTitle1()%></h2>

                <p><%=b.getContent1()%></p>

                <h2 class="mb-3 mt-5"><%=b.getTitle2()%></h2>

                <p><%=b.getContent2()%></p>

                <div class="pt-5 mt-5">
                    <h3 class="mb-5">0 Bình Luận</h3>
                    <div class="comment-form-wrap pt-5">
                        <h3 class="mb-5">Viết bình luận</h3>
                        <form action="#" class="p-5 bg-light">
                            <div class="form-group">
                                <label for="name">Tên *</label>
                                <input type="text" class="form-control" id="name">
                            </div>
                            <div class="form-group">
                                <label for="email">Email *</label>
                                <input type="email" class="form-control" id="email">
                            </div>
                            <div class="form-group">
                                <label for="message">Nội dung</label>
                                <textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Đăng bình luận" class="btn py-3 px-5 btn-primary">
                            </div>
                        </form>
                    </div>
                </div>
            </div>


            <div class="col-md-4 sidebar ftco-animate">
                <div class="sidebar-box ftco-animate">
                    <h3>Bài viết gần đây</h3>
                    <div class="block-21 mb-4 d-flex">
                        <a class="blog-img mr-4" style="background-image: url(images/bl3.jpg);"></a>
                        <div class="text">
                            <h3 class="heading"><a href="#">Thuê Xe Máy Phố Cổ Hà Nội | Địa Điểm Thuê Xe Tốt Nhất
                                Hiện Nay!</a></h3>
                            <div class="meta">
                                <div><a href="#"><span class="icon-calendar"></span>29/10/2019</a></div>
                                <div><a href="#"><span class="icon-person"></span> ThueXeMay</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="block-21 mb-4 d-flex">
                        <a class="blog-img mr-4" style="background-image: url(images/bl2.jpg);"></a>
                        <div class="text">
                            <h3 class="heading"><a href="#">TOP 10 Địa Điểm Thuê Xe Máy Hà Nội Uy Tín Nhất Không Thể Bỏ
                                Qua!</a></h3>
                            <div class="meta">
                                <div><a href="#"><span class="icon-calendar"></span>2/10/2019</a></div>
                                <div><a href="#"><span class="icon-person"></span> ThueXeMay</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> <!-- .section -->

<footer class="ftco-footer ftco-bg-dark ftco-section">
    <div class="container">
        <div class="row mb-5">
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2"><a href="#" class="logo">Thue<span>XeMay</span></a></h2>
                    <p>Motorbike với dàn xe chất lượng cao, đội ngũ nhân viên chuyên nghiệp, nhiệt tình sẽ mang đến cho
                        bạn những trải nghiệm thú vị...</p>
                    <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                        <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                        <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                        <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4 ml-md-5">
                    <h2 class="ftco-heading-2">Thông tin</h2>
                    <ul class="list-unstyled">
                        <li><a href="#" class="py-2 d-block">Giới thiệu</a></li>
                        <li><a href="#" class="py-2 d-block">Dịch vụ</a></li>
                        <li><a href="#" class="py-2 d-block">Chính sách bảo mật</a></li>
                        <li><a href="#" class="py-2 d-block">Cẩm nang du lịch</a></li>
                        <li><a href="#" class="py-2 d-block">Hợp tác</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">Hỗ trợ khách hàng</h2>
                    <ul class="list-unstyled">
                        <li><a href="#" class="py-2 d-block">Câu hỏi thường gặp</a></li>
                        <li><a href="#" class="py-2 d-block">Phương thức thanh toán</a></li>
                        <li><a href="#" class="py-2 d-block">Thủ tục thuê xe</a></li>
                        <li><a href="#" class="py-2 d-block">Liên hệ</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">Thông tin liên hệ</h2>
                    <div class="block-23 mb-3">
                        <ul>
                            <li><span class="icon icon-map-marker"></span><span class="text">Trường đại học Nông Lâm, khu phố 6, phường Linh Trung, TP.Thủ Đức, TP.Hồ Chí Minh</span>
                            </li>
                            <li><a href="#"><span class="icon icon-phone"></span><span
                                    class="text">+84 326 500 729</span></a></li>
                            <li><a href="#"><span class="icon icon-envelope"></span><span
                                    class="text">ltweb@gmail.com</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>

<!-- loader -->
<div id="ftco-loader" class="show fullscreen">
    <svg class="circular" width="48px" height="48px">
        <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
        <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                stroke="#F96D00"/>
    </svg>
</div>


<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/aos.js"></script>
<script src="js/jquery.animateNumber.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/jquery.timepicker.min.js"></script>
<script src="js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="js/google-map.js"></script>
<script src="js/main.js"></script>

</body>
</html>