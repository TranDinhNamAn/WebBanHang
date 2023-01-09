<%@ page contentType="text/html; charset =UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Giới thiệu</title>
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
                <li class="nav-item active"><a href="about.jsp" class="nav-link">Giới thiệu</a></li>
                <li class="nav-item"><a href="xemay" class="nav-link">Xe máy</a></li>
                <li class="nav-item"><a href="ShowAllBlog" class="nav-link">Bài viết</a></li>
                <li class="nav-item"><a href="contact" class="nav-link">Liên hệ</a></li>
                <%if(session.getAttribute("account")!=null){%>
                <li class="nav-item"><a href="#" class="nav-link">Cá nhân</a>
                    <ul class="dr-menu">
                        <li class="subb"><a href="cart"><p style="margin-top: 6px" class="icon icon-cart-plus"></p></a></li>
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
                <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Trang chủ <i
                        class="ion-ios-arrow-forward"></i></a></span>
                    <span><a href="about.jsp">Giới thiệu <i class="ion-ios-arrow-forward"></i></a></span></p>
                <h1 class="mb-3 bread">Giới thiệu về chúng tôi</h1>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-about">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-md-6 p-md-5 img img-2 d-flex justify-content-center align-items-center"
                 style="background-image: url(images/bg2.jpg);">
            </div>
            <div class="col-md-6 wrap-about ftco-animate">
                <div class="heading-section heading-section-white pl-md-5">
                    <span class="subheading">Giới thiệu</span>
                    <h2 class="mb-4">Chào mừng đến với ThueXeMay</h2>

                    <p>Dịch vụ cho thuê xe máy trải dài khắp các tỉnh thành của Việt Nam, ThueXeMay hân hạnh được
                        phục vụ quý khách mong muốn trải nghiệm du lịch Phượt hay tự túc. Dịch vụ Thuê xe máy ThueXeMay
                        có những ưu điểm sau:</p>
                    <p>DỊCH VỤ CHUYÊN NGHIỆP – XE ĐẸP, ĐỦ SỐ LƯỢNG CUNG ỨNG<br/>
                        ThueXeMay cam kết cung ứng đầu đủ các loại xe mà quý khách yêu cầu, phù hợp với vùng miền và địa
                        hình mà bạn muốn đến.
                        Dịch vụ chuyên cho thuê xe máy Anh Vũ bao gồm nhiều loại xe như: Xe tay ga, xe số, hợp thời
                        trang, đảm bảo đẹp và sử dụng tốt.
                        Tha hồ để lựa chọn cho gia đình và bản thân mình khi đi du lịch.</p>

                    <p>CHÍNH SÁCH THUÊ XE MÁY RÕ RÀNG VÀ UY TÍN<br/>
                        Chúng tôi có chính sách cho thuê xe máy rõ ràng, đảm bảo quyền lợi của khách hàng muốn thuê xe
                        máy.
                        Cách phục vụ chuyên nghiệp cũng như hỗ trợ trước và sau khi thuê xe sẽ làm hài lòng mọi khách
                        hàng dù khó tính đến đâu.
                        Thủ tục nhanh và hợp đồng ngắn gọn dễ hiểu là ưu điểm của Motorbike.vn, giúp cho quý khách hàng
                        tiết kiệm được thời gian, công sức.
                        Chúng tôi giao xe tận nơi và có thể linh động nhận xe tại địa điểm gần quý khách nhất có thể.
                    </p>
                    <p><a href="motor.jsp" class="btn btn-primary py-3 px-4">Tìm xe</a></p>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-intro" style="background-image: url(images/bg3.jpg);">
    <div class="overlay"></div>
    <div class="container">
        <div class="row justify-content-end">
            <div class="col-md-6 heading-section heading-section-white ftco-animate">
                <h2 class="mb-3">Liên hệ ngay với ThueXeMay để được tư vấn đặt xe và hưởng dịch vụ tốt nhất.</h2>
                <a href="contact.jsp" class="btn btn-primary btn-lg">Liên hệ</a>
            </div>
        </div>
    </div>
</section>


<footer class="ftco-footer ftco-bg-dark ftco-section">
    <div class="container">
        <div class="row mb-5">
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2"><a href="#" class="logo">Thue<span>XeMay</span></a></h2>
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