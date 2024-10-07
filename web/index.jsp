<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                    <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-location-arrow"></span></div>
                                    <div class="text"><span>Địa chỉ</span><span></span></div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="top-wrap d-flex">
                                    <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-phone"></span></div>
                                    <div class="text"><span>Gọi cho chúng tôi</span><span>(+01) 123 456 7890</span></div>
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
                        <li class="nav-item active"><a href="index.jsp" class="nav-link">Trang Chủ</a></li>
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

        <div class="hero-wrap">
            <div class="home-slider owl-carousel">
                <div class="slider-item" style="background-image:url(images/2.jpg);">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row no-gutters slider-text align-items-center justify-content-end">
                            <div class="col-md-6 ftco-animate">
                                <div class="text w-100">
                                    <h1 class="mb-4">Hãy Đón Nhận Hành Trình Chữa Lành</h1>
                                    <p>Bước đầu tiên để tìm thấy sự bình yên nội tại. Nền tảng của chúng tôi cung cấp các công cụ và hỗ trợ cần thiết để vượt qua lo âu, trầm cảm và những thách thức cảm xúc. Cùng nhau, chúng ta sẽ giúp bạn tìm thấy hy vọng và chữa lành.</p>
                                    <p><a href="#" class="btn btn-primary">Đặt lịch hẹn</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="slider-item" style="background-image:url(images/15.jpg);">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row no-gutters slider-text align-items-center justify-content-end">
                            <div class="col-md-6 ftco-animate">
                                <div class="text w-100">
                                    <h1 class="mb-4">Nuôi Dưỡng Tâm Trí & Tâm Hồn</h1>
                                    <p>Đã đến lúc tập trung vào sức khỏe tâm lý của bạn. Với các liệu pháp hướng dẫn, thực hành chánh niệm và cộng đồng hỗ trợ, bạn sẽ học cách quản lý căng thẳng và xây dựng sự kiên cường cảm xúc để có một cuộc sống khỏe mạnh và hạnh phúc hơn.</p>
                                    <p><a href="#" class="btn btn-primary">Đặt lịch hẹn</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section class="ftco-appointment ftco-section ftco-no-pt ftco-no-pb">
            <div class="overlay"></div>
            <div class="container">
                <div class="row d-md-flex justify-content-center">
                    <div class="col-md-12">
                        <div class="wrap-appointment d-md-flex">
                            <div class="col-md-8 bg-primary p-5 heading-section heading-section-white">
                                <span class="subheading">Đặt Lịch Hẹn</span>
                                <h2 class="mb-4">Tư Vấn Miễn Phí</h2>
                                <form action="#" class="appointment">
                                    <div class="row justify-content-center">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Tên của bạn">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Số điện thoại">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="form-field">
                                                    <div class="select-wrap">
                                                        <div class="icon"><span class="fa fa-chevron-down"></span></div>
                                                        <select name="" id="" class="form-control">
                                                            <option value="">Chọn Dịch Vụ</option>
                                                            <option value="">Điều Chỉnh Xương</option>
                                                            <option value="">Điện Châm</option>
                                                            <option value="">Liệu Pháp Bạch Huyết Thủ Công</option>
                                                            <option value="">Châm Cứu Y Tế</option>
                                                            <option value="">Bài Tập Chữa Trị</option>
                                                            <option value="">Di Động Khớp</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="form-field">
                                                    <div class="select-wrap">
                                                        <div class="icon"><span class="fa fa-chevron-down"></span></div>
                                                        <select name="" id="" class="form-control">
                                                            <option value="">Chọn Bác Sĩ Chuyên Khoa</option>
                                                            <option value="">John Doe</option>
                                                            <option value="">William Smith</option>
                                                            <option value="">Danny Green</option>
                                                            <option value="">Jason Thompson</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="input-wrap">
                                                    <div class="icon"><span class="fa fa-calendar"></span></div>
                                                    <input type="text" class="form-control appointment_date" placeholder="Ngày">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="input-wrap">
                                                    <div class="icon"><span class="fa fa-clock-o"></span></div>
                                                    <input type="text" class="form-control appointment_time" placeholder="Giờ">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="submit" value="Gửi tin nhắn" class="btn btn-secondary py-3 px-4">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-4 bg-white text-center p-5">
                                <div class="desc border-bottom pb-4">
                                    <h2>Giờ Làm Việc</h2>
                                    <div class="opening-hours">
                                        <h4>Ngày Mở Cửa:</h4>
                                        <p class="pl-3">
                                            <span><strong>Thứ Hai – Thứ Sáu:</strong> 9 giờ sáng đến 8 giờ tối</span>
                                            <span><strong>Thứ Bảy:</strong> 9 giờ sáng đến 5 giờ chiều</span>
                                        </p>
                                        <h4>Ngày Nghỉ:</h4>
                                        <p class="pl-3">
                                            <span>Tất cả các ngày Chủ Nhật</span>
                                            <span>Tất cả các ngày Lễ Chính Thức</span>
                                        </p>
                                    </div>
                                </div>
                                <div class="desc pt-4 ">
                                    <h3 class="heading">Đối Với Các Trường Hợp Khẩn Cấp</h3>
                                    <span class="phone">(+01) 123 456 7890</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center pb-5 mb-3">
                    <div class="col-md-7 heading-section text-center ftco-animate">
                        <span class="subheading">Chúng tôi cung cấp dịch vụ</span>
                        <h2>Lợi Ích của Chúng Tôi</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 services ftco-animate">
                        <div class="d-block d-flex">
                            <div class="icon d-flex justify-content-center align-items-center">
                                <span class="flaticon-chiropractic"></span>
                            </div>
                            <div class="media-body pl-3">
                                <h3 class="heading">Tư Vấn Tâm Lý</h3>
                                <p>Giúp bạn khám phá và hiểu rõ hơn về cảm xúc của mình, từ đó cải thiện tâm trạng và sức khỏe tâm lý.</p>
                                <p><a href="#" class="btn-custom">Tìm hiểu thêm</a></p>
                            </div>
                        </div>
                        <div class="d-block d-flex">
                            <div class="icon d-flex justify-content-center align-items-center">
                                <span class="flaticon-acupuncture"></span>
                            </div>
                            <div class="media-body pl-3">
                                <h3 class="heading">Chánh Niệm</h3>
                                <p>Giúp bạn tập trung vào hiện tại, giảm lo âu và cải thiện sức khỏe tâm lý thông qua các kỹ thuật chánh niệm.</p>
                                <p><a href="#" class="btn-custom">Tìm hiểu thêm</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 services ftco-animate">
                        <div class="d-block d-flex">
                            <div class="icon d-flex justify-content-center align-items-center">
                                <span class="flaticon-electrotherapy"></span>
                            </div>
                            <div class="media-body pl-3">
                                <h3 class="heading">Hỗ Trợ Tâm Lý</h3>
                                <p>Cung cấp sự hỗ trợ và hướng dẫn cho những người đang phải đối mặt với các vấn đề tâm lý như trầm cảm và lo âu.</p>
                                <p><a href="#" class="btn-custom">Tìm hiểu thêm</a></p>
                            </div>
                        </div>
                        <div class="d-block d-flex">
                            <div class="icon d-flex justify-content-center align-items-center">
                                <span class="flaticon-examination"></span>
                            </div>
                            <div class="media-body pl-3">
                                <h3 class="heading">Huấn Luyện Tâm Lý</h3>
                                <p>Giúp bạn phát triển kỹ năng cá nhân và vượt qua những thách thức trong cuộc sống thông qua các buổi huấn luyện.</p>
                                <p><a href="#" class="btn-custom">Tìm hiểu thêm</a></p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 services ftco-animate">
                        <div class="d-block d-flex">
                            <div class="icon d-flex justify-content-center align-items-center">
                                <span class="flaticon-lymph-nodes"></span>
                            </div>
                            <div class="media-body pl-3">
                                <h3 class="heading">Thư Giãn</h3>
                                <p>Giúp bạn giảm căng thẳng và lo âu thông qua các phương pháp thư giãn như yoga và thiền.</p>
                                <p><a href="#" class="btn-custom">Tìm hiểu thêm</a></p>
                            </div>
                        </div>
                        <div class="d-block d-flex">
                            <div class="icon d-flex justify-content-center align-items-center">
                                <span class="flaticon-bone"></span>
                            </div>
                            <div class="media-body pl-3">
                                <h3 class="heading">Tạo Kết Nối</h3>
                                <p>Khuyến khích việc kết nối và xây dựng mối quan hệ tích cực với những người xung quanh để hỗ trợ sức khỏe tâm lý.</p>
                                <p><a href="#" class="btn-custom">Tìm hiểu thêm</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="ftco-section ftco-no-pb ftco-no-pt">
            <div class="container-fluid px-md-0">
                <div class="row no-gutters justify-content-center pb-5 mb-3">
                    <div class="col-md-7 heading-section text-center ftco-animate">
                        <span class="subheading">Đội Ngũ Chuyên Gia</span>
                        <h2>Chuyên Gia Tâm Lý / Nhà Tham Vấn</h2>
                    </div>
                </div>
                <div class="row no-gutters">
                    <div class="col-md-4 col-lg ftco-animate d-flex">
                        <div class="staff bg-primary">
                            <div class="img-wrap d-flex align-items-stretch">
                                <div class="img align-self-stretch" style="background-image: url(images/staff-1.jpg);"></div>
                            </div>
                            <div class="text pt-3 px-3 pb-4 text-center">
                                <h3>Dr. Anna Lee</h3>
                                <span class="position mb-2">Giám Đốc Tâm Lý</span>
                                <div class="faded">
                                    <ul class="ftco-social text-center">
                                        <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a></li>
                                        <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a></li>
                                        <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-google"></span></a></li>
                                        <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-lg ftco-animate d-flex">
                        <div class="staff bg-primary">
                            <div class="img-wrap d-flex align-items-stretch">
                                <div class="img align-self-stretch" style="background-image: url(images/staff-2.jpg);"></div>
                            </div>
                            <div class="text pt-3 px-3 pb-4 text-center">
                                <h3>Mark Johnson</h3>
                                <span class="position mb-2">Chuyên Gia Tâm Lý</span>
                                <div class="faded">
                                    <ul class="ftco-social text-center">
                                        <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a></li>
                                        <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a></li>
                                        <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-google"></span></a></li>
                                        <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-lg ftco-animate d-flex">
                        <div class="staff bg-primary">
                            <div class="img-wrap d-flex align-items-stretch">
                                <div class="img align-self-stretch" style="background-image: url(images/staff-3.jpg);"></div>
                            </div>
                            <div class="text pt-3 px-3 pb-4 text-center">
                                <h3>Emily Clark</h3>
                                <span class="position mb-2">Tư Vấn Tâm Lý</span>
                                <div class="faded">
                                    <ul class="ftco-social text-center">
                                        <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a></li>
                                        <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a></li>
                                        <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-google"></span></a></li>
                                        <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-lg ftco-animate d-flex">
                        <div class="staff bg-primary">
                            <div class="img-wrap d-flex align-items-stretch">
                                <div class="img align-self-stretch" style="background-image: url(images/staff-4.jpg);"></div>
                            </div>
                            <div class="text pt-3 px-3 pb-4 text-center">
                                <h3>Sarah Brown</h3>
                                <span class="position mb-2">Chuyên Viên Tâm Lý</span>
                                <div class="faded">
                                    <ul class="ftco-social text-center">
                                        <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a></li>
                                        <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a></li>
                                        <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-google"></span></a></li>
                                        <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-lg ftco-animate d-flex">
                        <div class="staff bg-primary">
                            <div class="img-wrap d-flex align-items-stretch">
                                <div class="img align-self-stretch" style="background-image: url(images/staff-5.jpg);"></div>
                            </div>
                            <div class="text pt-3 px-3 pb-4 text-center">
                                <h3>James Wilson</h3>
                                <span class="position mb-2">Điều Phối Viên Tâm Lý</span>
                                <div class="faded">
                                    <ul class="ftco-social text-center">
                                        <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a></li>
                                        <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a></li>
                                        <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-google"></span></a></li>
                                        <li class="ftco-animate"><a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"></span></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section ftco-no-pt ftco-no-pb">
            <div class="container">
                <div class="row d-flex no-gutters">
                    <div class="col-md-6 d-flex order-md-last">
                        <div class="img img-video d-flex align-self-stretch align-items-center justify-content-center mb-4 mb-sm-0" style="background-image:url(images/14.jpg);">
                            <a href="https://www.bing.com/videos/riverview/relatedvideo?pglt=43&q=video+gi%e1%bb%9bi+thi%e1%bb%87u+v%e1%bb%81+ch%e1%bb%afa+l%c3%a0nh+t%c3%a2m+l%c3%bd&cvid=d1f6ba1ac35b465882784b8a293fbb0e&gs_lcrp=EgZjaHJvbWUyBggAEEUYOTIGCAEQABhAMgYIAhAAGEAyBggDEEUYPDIGCAQQRRg80gEJMjQzODNqMGoxqAIAsAIA&PC=ACTS&FPIG=887E1E8BE8FD4E31862C31601E24F796&first=1&ru=%2fsearch%3fpglt%3d43%26q%3dvideo%2bgi%25E1%25BB%259Bi%2bthi%25E1%25BB%2587u%2bv%25E1%25BB%2581%2bch%25E1%25BB%25AFa%2bl%25C3%25A0nh%2bt%25C3%25A2m%2bl%25C3%25BD%26cvid%3dd1f6ba1ac35b465882784b8a293fbb0e%26gs_lcrp%3dEgZjaHJvbWUyBggAEEUYOTIGCAEQABhAMgYIAhAAGEAyBggDEEUYPDIGCAQQRRg80gEJMjQzODNqMGoxqAIAsAIA%26PC%3dACTS%26FPIG%3d887E1E8BE8FD4E31862C31601E24F796%26first%3d1%26FORM%3dPERE&mmscn=vwrc&mid=41A153BA7E776C01B69341A153BA7E776C01B693&FORM=WRVORC#:~:text=Th%E1%BA%ADm%20ch%C3%AD,%20Li%C3%AAn%20H%E1%BB%A3p%20qu%E1%BB%91c%20%C4%91%C3%A3%20%C4%91%C6%B0a%20ra%20th%C3%B4ng%20%C4%91i%E1%BB%87p" class="icon-video popup-vimeo d-flex justify-content-center align-items-center">
                                <span class="fa fa-play"></span>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6 pr-md-5 py-md-5">
                        <div class="row justify-content-start py-5">
                            <div class="col-md-12 heading-section ftco-animate">
                                <span class="subheading">Chào Mừng đến với Tâm Lý Học</span>
                                <h2 class="mb-4">Giới Thiệu Về Tâm Lý Học</h2>
                                <p>Đằng sau những ngọn núi ngôn từ, xa khỏi những quốc gia Vokalia và Consonantia, có những văn bản mù. Tách biệt, họ sống trong Bookmarksgrove ngay tại bờ biển của Semantics, một đại dương ngôn ngữ lớn. Một con sông nhỏ mang tên Duden chảy qua khu vực đó và cung cấp cho các nhà viết mạo hiểm một nơi trú ẩn.</p>
                                <p>Đó là một nơi tuyệt vời với những cảm xúc phong phú và những trải nghiệm đa dạng. Các chuyên gia của chúng tôi ở đây để hỗ trợ bạn trong hành trình tâm lý của bạn.</p>
                                <p><a href="#" class="btn btn-primary">Tìm hiểu thêm</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="ftco-section testimony-section bg-dark">
            <div class="container">
                <div class="row justify-content-center pb-5 mb-3">
                    <div class="col-md-7 heading-section heading-section-white text-center ftco-animate">
                        <span class="subheading">Ý Kiến Khách Hàng</span>
                        <h2>Khách Hàng Hạnh Phúc &amp; Phản Hồi</h2>
                    </div>
                </div>
                <div class="row ftco-animate">
                    <div class="col-md-12">
                        <div class="carousel-testimony owl-carousel ftco-owl">
                            <div class="item">
                                <div class="testimony-wrap py-4">
                                    <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                                    <div class="text">
                                        <p class="mb-4">Tôi đã tìm thấy ánh sáng trong những khoảnh khắc tăm tối nhất. Các chuyên gia tại đây đã giúp tôi vượt qua khó khăn và tìm lại bản thân.</p>
                                        <div class="d-flex align-items-center">
                                            <div class="user-img" style="background-image: url(images/person_1.jpg)"></div>
                                            <div class="pl-3">
                                                <p class="name">Linda Nguyen</p>
                                                <span class="position">Khách Hàng</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="testimony-wrap py-4">
                                    <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                                    <div class="text">
                                        <p class="mb-4">Tôi rất cảm kích về sự tận tâm và chuyên nghiệp của đội ngũ. Họ đã giúp tôi khám phá và chữa lành những tổn thương trong tâm hồn.</p>
                                        <div class="d-flex align-items-center">
                                            <div class="user-img" style="background-image: url(images/person_2.jpg)"></div>
                                            <div class="pl-3">
                                                <p class="name">David Tran</p>
                                                <span class="position">Khách Hàng</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="testimony-wrap py-4">
                                    <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                                    <div class="text">
                                        <p class="mb-4">Dịch vụ ở đây thật sự tuyệt vời! Tôi cảm thấy được lắng nghe và thấu hiểu. Điều đó đã tạo ra sự khác biệt lớn trong cuộc sống của tôi.</p>
                                        <div class="d-flex align-items-center">
                                            <div class="user-img" style="background-image: url(images/person_3.jpg)"></div>
                                            <div class="pl-3">
                                                <p class="name">Emma Hoang</p>
                                                <span class="position">Khách Hàng</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="testimony-wrap py-4">
                                    <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                                    <div class="text">
                                        <p class="mb-4">Tôi đã có thể vượt qua những rào cản trong tâm lý của mình nhờ vào sự hỗ trợ chân thành của đội ngũ. Tôi thực sự biết ơn!</p>
                                        <div class="d-flex align-items-center">
                                            <div class="user-img" style="background-image: url(images/person_1.jpg)"></div>
                                            <div class="pl-3">
                                                <p class="name">Michael Pham</p>
                                                <span class="position">Khách Hàng</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="testimony-wrap py-4">
                                    <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                                    <div class="text">
                                        <p class="mb-4">Trải nghiệm của tôi thật tuyệt vời. Đội ngũ đã giúp tôi xây dựng lại sự tự tin và tìm thấy hạnh phúc.</p>
                                        <div class="d-flex align-items-center">
                                            <div class="user-img" style="background-image: url(images/person_2.jpg)"></div>
                                            <div class="pl-3">
                                                <p class="name">Sophia Bui</p>
                                                <span class="position">Khách Hàng</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="ftco-section ftco-no-pt ftco-no-pb">
            <div class="container-fluid px-md-0">
                <div class="row no-gutters">
                    <div class="col-md-3 ftco-animate">
                        <div class="work img d-flex align-items-center" style="background-image: url(images/1.jpg);">
                            <a href="images/1.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
                                <span class="fa fa-expand"></span>
                            </a>
                            <div class="desc w-100 px-4 text-center pt-5 mt-5">
                                <div class="text w-100 mb-3 mt-4">
                                    <h2><a href="work-single.html">Đau Nhức Tâm Lý</a></h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 ftco-animate">
                        <div class="work img d-flex align-items-center" style="background-image: url(images/7.jpg);">
                            <a href="images/7.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
                                <span class="fa fa-expand"></span>
                            </a>
                            <div class="desc w-100 px-4 text-center pt-5 mt-5">
                                <div class="text w-100 mb-3 mt-4">
                                    <h2><a href="work-single.html">Căng Thẳng và Lo Âu</a></h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 ftco-animate">
                        <div class="work img d-flex align-items-center" style="background-image: url(images/11.jpg);">
                            <a href="images/11.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
                                <span class="fa fa-expand"></span>
                            </a>
                            <div class="desc w-100 px-4 text-center pt-5 mt-5">
                                <div class="text w-100 mb-3 mt-4">
                                    <h2><a href="work-single.html">Trầm Cảm</a></h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 ftco-animate">
                        <div class="work img d-flex align-items-center" style="background-image: url(images/work-4.jpg);">
                            <a href="images/work-4.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
                                <span class="fa fa-expand"></span>
                            </a>
                            <div class="desc w-100 px-4 text-center pt-5 mt-5">
                                <div class="text w-100 mb-3 mt-4">
                                    <h2><a href="work-single.html">Rối Loạn Tâm Thần</a></h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 ftco-animate">
                        <div class="work img d-flex align-items-center" style="background-image: url(images/16.jpg);">
                            <a href="images/16.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
                                <span class="fa fa-expand"></span>
                            </a>
                            <div class="desc w-100 px-4 text-center pt-5 mt-5">
                                <div class="text w-100 mb-3 mt-4">
                                    <h2><a href="work-single.html">Tư Vấn Tâm Lý</a></h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 ftco-animate">
                        <div class="work img d-flex align-items-center" style="background-image: url(images/bg_3.jpg);">
                            <a href="images/bg3.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
                                <span class="fa fa-expand"></span>
                            </a>
                            <div class="desc w-100 px-4 text-center pt-5 mt-5">
                                <div class="text w-100 mb-3 mt-4">
                                    <h2><a href="work-single.html">Hỗ Trợ Tâm Lý</a></h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 ftco-animate">
                        <div class="work img d-flex align-items-center" style="background-image: url(images/work-7.jpg);">
                            <a href="images/work-7.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
                                <span class="fa fa-expand"></span>
                            </a>
                            <div class="desc w-100 px-4 text-center pt-5 mt-5">
                                <div class="text w-100 mb-3 mt-4">
                                    <h2><a href="work-single.html">Quản Lý Cảm Xúc</a></h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 ftco-animate">
                        <div class="work img d-flex align-items-center" style="background-image: url(images/work-8.jpg);">
                            <a href="images/work-8.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
                                <span class="fa fa-expand"></span>
                            </a>
                            <div class="desc w-100 px-4 text-center pt-5 mt-5">
                                <div class="text w-100 mb-3 mt-4">
                                    <h2><a href="work-single.html">Phục Hồi Tâm Lý</a></h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center pb-5 mb-3">
                    <div class="col-md-7 heading-section text-center ftco-animate">
                        <span class="subheading">Tin Tức &amp; Blog</span>
                        <h2>Tin mới nhất từ blog của chúng tôi</h2>
                    </div>
                </div>
                <div class="row d-flex">
                    <div class="col-md-4 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single.html" class="block-20 rounded" style="background-image: url('images/image_1.jpg');">
                            </a>
                            <div class="text mt-3">
                                <div class="posted mb-3 d-flex">
                                    <div class="img author" style="background-image: url(images/person_2.jpg);"></div>
                                    <div class="desc pl-3">
                                        <span>Được đăng bởi Nguyễn Văn A</span>
                                        <span>24 Tháng 2, 2020</span>
                                    </div>
                                </div>
                                <h3 class="heading"><a href="#">Những điều mỗi người nên biết về phục hồi tâm lý</a></h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single.html" class="block-20 rounded" style="background-image: url('images/image_2.jpg');">
                            </a>
                            <div class="text mt-3">
                                <div class="posted mb-3 d-flex">
                                    <div class="img author" style="background-image: url(images/person_3.jpg);"></div>
                                    <div class="desc pl-3">
                                        <span>Được đăng bởi Nguyễn Văn B</span>
                                        <span>25 Tháng 2, 2020</span>
                                    </div>
                                </div>
                                <h3 class="heading"><a href="#">Hướng dẫn cách vượt qua trầm cảm</a></h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single.html" class="block-20 rounded" style="background-image: url('images/image_3.jpg');">
                            </a>
                            <div class="text mt-3">
                                <div class="posted mb-3 d-flex">
                                    <div class="img author" style="background-image: url(images/person_1.jpg);"></div>
                                    <div class="desc pl-3">
                                        <span>Được đăng bởi Nguyễn Văn C</span>
                                        <span>26 Tháng 2, 2020</span>
                                    </div>
                                </div>
                                <h3 class="heading"><a href="#">Tầm quan trọng của tư vấn tâm lý trong xã hội hiện đại</a></h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


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
                                    <li><span class="icon fa fa-map-marker"></span><span class="text"></span></li>
                                    <li><a href="#"><span class="icon fa fa-phone"></span><span class="text">+84 123 456 789</span></a></li>
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
