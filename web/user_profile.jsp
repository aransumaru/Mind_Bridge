<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <title>Mind Bridge</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">

        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/profile.css">
    </head>
    <body>
        <div class="top py-1">
            <div class="container">
                <div class="row">
                    <div class="col d-flex align-items-center">
                        <p class="mb-0"><a href="#">chiropractic@email.com</a> | <a href="#">Trợ Giúp</a> | </p>
                    </div>
                    <div class="col-4 d-flex justify-content-end">
                        <div class="social-media">
                            <p class="mb-0 d-flex">
                                <a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
                                <a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
                                <a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
                                <a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-dribbble"><i class="sr-only">Dribbble</i></span></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="wrap">
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-md-3 mb-md-0 mb-4 d-flex align-items-center">
                        <a class="navbar-brand" href="index.jsp">Mind Bridge</a>
                    </div>
                    <div class="col-md-7">
                        <div class="row">
                            <div class="col-md-8 mb-md-0 mb-3">
                                <div class="top-wrap d-flex">
                                </div>
                            </div>
                            <div class="col">
                                <div class="top-wrap d-flex">
                                    <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-phone"></span></div>
                                    <div class="text"><span>Gọi cho chúng tôi</span><span>(+84)965 878 989</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="fa fa-bars"></span> Menu
                </button>
                <div class="order-lg-last">
                    <%
                        if (request.getSession().getAttribute("role") == null) {
                            out.println("<a href=\"login\" class=\"btn btn-primary\">Đăng nhập</a>");
                        } else if ((String)request.getSession().getAttribute("role") != null) {
                            out.println("<a href=\"user_profile.jsp\" class=\"btn btn-primary\">Profile</a>");
                            out.println("<a href=\"logout\" class=\"btn btn-primary\">Đăng xuất</a>");
                        }
                    %>
                </div>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item"><a href="index.jsp" class="nav-link">Trang Chủ</a></li>
                        <li class="nav-item"><a href="about.jsp" class="nav-link">Giới Thiệu</a></li>
                        <li class="nav-item"><a href="team.jsp" class="nav-link">Đội Ngũ</a></li>
                        <li class="nav-item"><a href="services.jsp" class="nav-link">Dịch Vụ</a></li>
                        <li class="nav-item"><a href="department.jsp" class="nav-link">Gói Hội Viên</a></li>
                        <li class="nav-item"><a href="gallery.jsp" class="nav-link">Thư Viện Ảnh</a></li>
                        <li class="nav-item"><a href="blog.jsp" class="nav-link">Blog</a></li>
                        <li class="nav-item"><a href="contact.jsp" class="nav-link">Liên Hệ</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- END nav -->
        <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-end">
                    <div class="col-md-9 ftco-animate pb-5">
                        <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html">Trang chủ <i class="fa fa-chevron-right"></i></a></span></p>
                        <h1 class="mb-0 bread">Trang cá nhân</h1>
                    </div>
                </div>
            </div>
        </section>

        <div class="container">
            <div class="main-body">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-column align-items-center text-center">
                                    <!-- User's uploaded profile image -->
                                    <img src="E:/Study Document/EXE201/Mind_Bridge/web/images/user/ho-hoan-kiem-601baa99700a4.jpg" 
                                         alt="Profile" class="rounded-circle p-1 bg-primary" width="110">
                                    <div class="mt-3">
                                        <h4>Nguyễn Thành Nam</h4> <!-- User's full name -->
                                        <button class="btn btn-outline-primary">Message</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="card">
                            <div class="card-body">
                                <!-- Display full name -->
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Full Name</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <input type="text" class="form-control" value="Nguyễn Thành Nam" required>
                                    </div>
                                </div>
                                <!-- Display email -->
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Email</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <input type="email" class="form-control" value="dung7v3@gmail.com" required>
                                    </div>
                                </div>
                                <!-- Display phone number -->
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Phone</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <input type="text" class="form-control" value="0 324 192 111" required>
                                    </div>
                                </div>
                                <!-- Add password field for changing password -->
                                <div class="row mb-3">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Password</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        <input type="password" class="form-control" value="12" required>
                                    </div>
                                </div>
                                <!-- Save button -->
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-9 text-secondary">
                                        <input type="button" class="btn btn-primary px-4" value="Save Changes">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>





        <footer class="footer ftco-section ftco-no-pt">
            <div class="container">
                <div class="row mb-5">
                    <div class="col-md-6 col-lg">
                        <div class="ftco-footer-widget py-4 py-md-5">
                            <h2 class="logo"><a href="#">Tâm Lý Học</a></h2>
                            <p>Chúng tôi cung cấp dịch vụ tư vấn và hỗ trợ tâm lý cho những ai cần giúp đỡ trong cuộc sống hàng ngày. Hãy để chúng tôi đồng hành cùng bạn trên hành trình tìm kiếm sức khỏe tâm thần.</p>
                            <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-4">
                                <li class="ftco-animate"><a href="#"><span class="fa fa-twitter"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="fa fa-facebook"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="fa fa-instagram"></span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg">
                        <div class="ftco-footer-widget ml-md-5 py-5">
                            <h2 class="ftco-heading-2">Dịch Vụ</h2>
                            <ul class="list-unstyled">
                                <li><a href="#" class="py-1 d-block"><span class="fa fa-check mr-3"></span>Tư vấn tâm lý</a></li>
                                <li><a href="#" class="py-1 d-block"><span class="fa fa-check mr-3"></span>Hỗ trợ tâm lý</a></li>
                                <li><a href="#" class="py-1 d-block"><span class="fa fa-check mr-3"></span>Chương trình phục hồi tâm lý</a></li>
                                <li><a href="#" class="py-1 d-block"><span class="fa fa-check mr-3"></span>Tham vấn cho trẻ em</a></li>
                                <li><a href="#" class="py-1 d-block"><span class="fa fa-check mr-3"></span>Đào tạo kỹ năng quản lý cảm xúc</a></li>
                                <li><a href="#" class="py-1 d-block"><span class="fa fa-check mr-3"></span>Hỗ trợ tâm lý cho gia đình</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg">
                        <div class="ftco-footer-widget py-4 py-md-5">
                            <h2 class="ftco-heading-2">Thông tin liên hệ</h2>
                            <div class="block-23 mb-3">
                                <ul>
                                    <li><a href="#"><span class="icon fa fa-phone"></span><span class="text">(+84)965 878 989</span></a></li>
                                    <li><a href="#"><span class="icon fa fa-paper-plane"></span><span class="text">info@domaincuaban.com</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg">
                        <div class="ftco-footer-widget bg-primary p-4 py-5">
                            <h2 class="ftco-heading-2">Giờ làm việc</h2>
                            <div class="opening-hours">
                                <h4>Ngày mở cửa:</h4>
                                <p class="pl-3">
                                    <span>Thứ Hai – Thứ Sáu : 9am đến 8pm</span>
                                    <span>Thứ Bảy : 9am đến 5pm</span>
                                </p>
                                <h4>Ngày nghỉ:</h4>
                                <p class="pl-3">
                                    <span>Tất cả các ngày Chủ Nhật</span>
                                    <span>Tất cả các ngày lễ</span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Bản quyền &copy;<script>document.write(new Date().getFullYear());</script> Tất cả quyền được bảo lưu | Mẫu này được thực hiện với <i class="fa fa-heart" aria-hidden="true"></i> bởi <a href="https://colorlib.com" target="_blank">Colorlib</a>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                </div>
            </div>
        </footer>



        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/jquery.animateNumber.min.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/jquery.timepicker.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/scrollax.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="js/google-map.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>
