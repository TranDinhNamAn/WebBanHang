<%@ page import="java.util.List" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Blog" %>
<%@ page import="vn.edu.hcmuaf.fit.service.ContactServices" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Contact" %>
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
                <li class="nav-item"><a href="trangchu" class="nav-link">Trang chủ</a></li>
                <li class="nav-item"><a href="about.jsp" class="nav-link">Giới thiệu</a></li>
                <li class="nav-item"><a href="xemay" class="nav-link">Xe máy</a></li>
                <li class="nav-item active"><a href="ShowAllBlog" class="nav-link">Bài viết</a></li>
                <li class="nav-item"><a href="contact" class="nav-link">Liên hệ</a></li>
                <%if(session.getAttribute("account")!=null){
                %>
                <li class="nav-item"><a href="#" class="nav-link">Cá nhân</a>
                    <ul class="dr-menu">
                        <li class="subb"><a href="cart"><p style="margin-top: 6px"
                                                           class="icon icon-cart-plus"></p></a></li>
                        <li class="subb"><a href="OrderList">Lịch sử giao dịch</a></li>
                        <li class="subb"><a href="changepass">Đổi mật khẩu</a></li>
                        <li class="subb"><a href="dangxuat">Đăng xuất</a></li>
                    </ul>
                </li>
                <%}%>
                <%if(session.getAttribute("account")==null){%>
                <li class="nav-item"><a href="dangnhap" class="nav-link">Đăng nhập</a></li>
                <%}%>
            </ul>
        </div>
    </div>
</nav>
<!-- END nav -->

<section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg1.jpg');"
         data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
            <div class="col-md-9 ftco-animate pb-5">
                <p class="breadcrumbs"><span class="mr-2"><a href="trangchu">Trang chủ <i
                        class="ion-ios-arrow-forward"></i></a></span>
                    <span><a href="ShowAllBlog">Bài viết <i class="ion-ios-arrow-forward"></i></a></span></p>
                <h1 class="mb-3 bread">Bài viết của chúng tôi</h1>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section">
    <div class="container">
        <div class="row d-flex justify-content-center">
            <% List< Blog> list = (List<Blog>) request.getAttribute("blog");%>
            <%for (Blog b:list) {%>
            <div class="col-md-12 text-center d-flex ftco-animate">
                <div class="blog-entry justify-content-end mb-md-5">
                    <a href="blog-single.jsp" class="block-20 img"
                       style="background-image: url(<%=b.getImg()%>);">
                    </a>
                    <div class="text px-md-5 pt-4">
                        <div class="meta mb-3">
                            <div><a href="#"><%=b.getDate()%></a></div>
                            <div><a href="#"><%=b.getUser()%></a></div>
                        </div>
                        <h3 class="heading mt-2"><a href="blog-single.jsp"><%=b.getName()%></a></h3>
                        <p><%=b.getCotent()%></p>
                        <p><a href="blogDetail?id=<%=b.getId()%>" class="btn btn-primary">Xem thêm<span
                                class="icon-long-arrow-right"></span></a></p>
                    </div>
                </div>
            </div>
            <%}%>
        </div>
        <div class="row mt-5">
            <div class="col text-center">
                <div class="block-27">
                    <ul>
                        <li><a href="#">&lt;</a></li>
                        <li class="active"><span>1</span></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">&gt;</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<footer class="ftco-footer ftco-bg-dark ftco-section">
    <div class="container">
        <div class="row mb-5">
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2"><a href="trangchu" class="logo">Thue<span>XeMay</span></a></h2>
                    <p>ThueXeMay với dàn xe chất lượng cao, đội ngũ nhân viên chuyên nghiệp, nhiệt tình sẽ mang đến cho
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
                            <%Contact contact = ContactServices.getContact();%>
                            <li><span class="icon icon-map-marker"></span><span class="text"><%=contact.getAddress()%></span>
                            </li>
                            <li><a href="#"><span class="icon icon-phone"></span><span
                                    class="text"><%=contact.getPhone()%></span></a></li>
                            <li><a href="#"><span class="icon icon-envelope"></span><span
                                    class="text"><%=contact.getEmail()%></span></a></li>
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
