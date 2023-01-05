<%@ page import="vn.edu.hcmuaf.fit.model.Product" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset =UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <title>Trang chủ</title>
    <meta charset="utf-8" />
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
                <li class="nav-item active"><a href="trangchu" class="nav-link">Trang chủ</a></li>
                <li class="nav-item"><a href="about.jsp" class="nav-link">Giới thiệu</a></li>
                <li class="nav-item"><a href="pricing.jsp" class="nav-link">Bảng giá</a></li>
                <li class="nav-item"><a href="xemay" class="nav-link">Xe máy</a></li>
                <li class="nav-item"><a href="blog.jsp" class="nav-link">Bài viết</a></li>
                <li class="nav-item"><a href="contact.jsp" class="nav-link">Liên hệ</a></li>
                <%if(session.getAttribute("account")!=null){
               %>
                <li class="nav-item"><a href="dangxuat" class="nav-link">Đăng xuất</a></li>
                <%}%>
                <%if(session.getAttribute("account")==null){%>
                <li class="nav-item"><a href="dangnhap" class="nav-link">Đăng nhập</a></li>
                <%}%>
                <li class="nav-item"><a href="cart.html" class="nav-link"><p style="margin-top: 6px"
                                                                             class="icon icon-cart-plus"></p></a></li>

            </ul>
        </div>
    </div>
</nav>
<!-- END nav -->

<div class="hero-wrap ftco-degree-bg" style="background-image: url('images/bg1.jpg');"
     data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text justify-content-start align-items-center justify-content-center">
            <div class="col-lg-8 ftco-animate">
                <div class="text w-100 text-center mb-md-5 pb-md-5">
                    <h1 class="mb-4">Dịch vụ cho thuê xe máy tại ThueXeMay</h1>
                    <p style="font-size: 18px;">Bạn đang cần tìm một dịch vụ cho thuê xe máy uy tín, giá rẻ. ThueXeMay
                        với dàn xe chất lượng cao, đội ngũ nhân viên chuyên nghiệp, nhiệt tình sẽ mang đến cho bạn những
                        trải nghiệm thú vị...</p>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="ftco-section ftco-no-pt bg-light">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-md-12	featured-top">
                <div class="row no-gutters">
                    <div class="col-md-4 d-flex align-items-center">
                        <form id="motor" action="#" class="request-form ftco-animate bg-primary">
                            <h2>Đặt xe</h2>
                            <div class="form-group">
                                <label for="" class="label">Địa điểm thuê xe</label>
                                <input type="text" class="form-control" placeholder="Thành phố, Quận,Huyện">
                            </div>
                            <div class="form-group">
                                <label for="motors" class="label">Chọn loại xe</label>
                                <select name="motor" id="motors" style="display: block">
                                    <option value="volvo">Yamaha</option>
                                    <option value="saab">Honda</option>
                                    <option value="opel">Piaggio</option>
                                    <option value="audi">SYM</option>
                                    <option value="audi">Suzuki</option>
                                    <option value="audi">Vespa</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Tìm xe ngay" class="btn btn-secondary py-3 px-4">
                            </div>
                        </form>
                    </div>
                    <div class="col-md-8 d-flex align-items-center">
                        <div class="services-wrap rounded-right w-100">
                            <h3 class="heading-section mb-4">Ưu điểm khi thuê xe tại ThueXeMay</h3>
                            <div class="row d-flex mb-4">
                                <div class="col-md-4 d-flex align-self-stretch ftco-animate">
                                    <div class="services w-100 text-center">
                                        <div class="icon d-flex align-items-center justify-content-center"><span
                                                class="flaticon-route"></span></div>
                                        <div class="text w-100">
                                            <h3 class="heading mb-2">Chọn địa điểm thuê xe</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 d-flex align-self-stretch ftco-animate">
                                    <div class="services w-100 text-center">
                                        <div class="icon d-flex align-items-center justify-content-center"><span
                                                class="flaticon-handshake"></span></div>
                                        <div class="text w-100">
                                            <h3 class="heading mb-2">Thỏa thuận tốt nhất</h3>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 d-flex align-self-stretch ftco-animate">
                                    <div class="services w-100 text-center">
                                        <div class="icon d-flex align-items-center justify-content-center"><span
                                                class="icon-motorcycle"></span></div>
                                        <div class="text w-100">
                                            <h3 class="heading mb-2">Nhận xe của bạn</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <p><a href="#" class="btn btn-primary py-3 px-5">Đặt trước chiếc xe hoàn hảo của bạn</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>

<section class="ftco-section ftco-no-pt bg-light">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 heading-section text-center ftco-animate mb-5">
                <span class="subheading">Những gì chúng tôi cung cấp</span>
                <h2 class="mb-2">Các sản phẩm mới</h2>
            </div>
        </div>
        <div class="row">

            <div class="col-md-12">
                <div class="carousel-car owl-carousel">
                    <% List<Product> list = (List<Product>) request.getAttribute("list");
                        for (Product p: list) {
                    if(p.isNew()){
                    %>

                    <div class="item">
                        <div class="car-wrap rounded ftco-animate">
                            <div class="img rounded d-flex align-items-end"
                                 style="background-image: url(<%=p.getImg()%>);">
                            </div>
                            <div class="text">
                                <h2 class="mb-0"><a href="#"><%=p.getName()%></a></h2>
                                <div class="d-flex mb-3">
                                    <p class="price ml-auto"><%=p.getPrice()%> vnd<span>/Ngày</span></p>
                                </div>
                                <p class="d-flex mb-0 d-block"><a href="#" class="btn btn-primary py-2 mr-1">Thuê
                                    ngay</a> <a href="#" class="btn btn-secondary py-2 ml-1">Chi tiết</a></p>
                            </div>
                        </div>
                    </div>
                    <% } }%>
                </div>
            </div>

        </div>
    </div>
</section>
<section class="ftco-section ftco-no-pt bg-light">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 heading-section text-center ftco-animate mb-5">
                <h2 class="mb-2">Các phương tiện nổi bật</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="carousel-car owl-carousel">
                    <div class="item">
                        <div class="car-wrap rounded ftco-animate">
                            <div class="img rounded d-flex align-items-end"
                                 style="background-image: url(images/product/yamaha-excitermonster.jpg);">
                            </div>
                            <div class="text">
                                <h2 class="mb-0"><a href="#">Exciter Monster Energy</a></h2>
                                <div class="d-flex mb-3">
                                    <p class="price ml-auto">140.000vnđ <span>/Ngày</span></p>
                                </div>
                                <p class="d-flex mb-0 d-block"><a href="#" class="btn btn-primary py-2 mr-1">Thuê
                                    ngay</a> <a href="#" class="btn btn-secondary py-2 ml-1">Chi tiết</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="car-wrap rounded ftco-animate">
                            <div class="img rounded d-flex align-items-end"
                                 style="background-image: url(images/product/suzuki-impulse125.jpg);">
                            </div>
                            <div class="text">
                                <h2 class="mb-0"><a href="#">Impulse 125</a></h2>
                                <div class="d-flex mb-3">
                                    <p class="price ml-auto">125.000vnđ <span>/Ngày</span></p>
                                </div>
                                <p class="d-flex mb-0 d-block"><a href="#" class="btn btn-primary py-2 mr-1">Thuê
                                    ngay</a> <a href="#" class="btn btn-secondary py-2 ml-1">Chi tiết</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="car-wrap rounded ftco-animate">
                            <div class="img rounded d-flex align-items-end"
                                 style="background-image: url(images/product/honda-dream100.jpg);">
                            </div>
                            <div class="text">
                                <h2 class="mb-0"><a href="#">Dream 100</a></h2>
                                <div class="d-flex mb-3">
                                    <p class="price ml-auto">120.000vnđ <span>/Ngày</span></p>
                                </div>
                                <p class="d-flex mb-0 d-block"><a href="#" class="btn btn-primary py-2 mr-1">Thuê
                                    ngay</a> <a href="#" class="btn btn-secondary py-2 ml-1">Chi tiết</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="car-wrap rounded ftco-animate">
                            <div class="img rounded d-flex align-items-end"
                                 style="background-image: url(images/product/honda-sh350i.jpg);">
                            </div>
                            <div class="text">
                                <h2 class="mb-0"><a href="#">SH350i</a></h2>
                                <div class="d-flex mb-3">
                                    <p class="price ml-auto">120.000vnđ <span>/Ngày</span></p>
                                </div>
                                <p class="d-flex mb-0 d-block"><a href="#" class="btn btn-primary py-2 mr-1">Thuê
                                    ngay</a> <a href="#" class="btn btn-secondary py-2 ml-1">Chi tiết</a></p>
                            </div>
                        </div>
                    </div>
                </div>
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
                        Thủ tục nhanh và hợp đồng ngắn gọn dễ hiểu là ưu điểm của ThueXeMay, giúp cho quý khách hàng
                        tiết kiệm được thời gian, công sức.
                        Chúng tôi giao xe tận nơi và có thể linh động nhận xe tại địa điểm gần quý khách nhất có thể.
                    </p>
                    <p><a href="car.jsp" class="btn btn-primary py-3 px-4">Tìm xe</a></p>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center mb-5">
            <div class="col-md-7 heading-section text-center ftco-animate">
                <span class="subheading">Bài viết</span>
                <h2>Bài viết gần đây</h2>
            </div>
        </div>
        <div class="row d-flex">
            <div class="col-md-4 d-flex ftco-animate">
                <div class="blog-entry">
                    <a href="blog-single.jsp" class="block-20" style="background-image: url('images/bl1.jpg');">
                    </a>
                    <div class="text pt-4">
                        <h3 class="heading mt-2"><a href="#">Top 6 Địa Chỉ Thuê Xe Máy Hai Bà Trưng Hà Nội Tốt Nhất
                            2022</a></h3>
                        <p><a href="#" class="btn btn-primary">Xem thêm</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 d-flex ftco-animate">
                <div class="blog-entry">
                    <a href="blog-single.jsp" class="block-20" style="background-image: url('images/bl2.jpg');">
                    </a>
                    <div class="text pt-4">
                        <h3 class="heading mt-2"><a href="#">Thuê Xe Máy Phố Cổ Hà Nội | Địa Điểm Thuê Xe Tốt Nhất
                            Hiện Nay!</a></h3>
                        <p><a href="#" class="btn btn-primary">Xem thêm</a></p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 d-flex ftco-animate">
                <div class="blog-entry">
                    <a href="blog-single.jsp" class="block-20" style="background-image: url('images/bl3.jpg');">
                    </a>
                    <div class="text pt-4">
                        <h3 class="heading mt-2"><a href="#">TOP 10 Địa Điểm Thuê Xe Máy Hà Nội Uy Tín Nhất Không Thể Bỏ
                            Qua!</a></h3>
                        <p><a href="#" class="btn btn-primary">Xem thêm</a></p>
                    </div>
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