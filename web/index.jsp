<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="Model.User" scope="session" />
<!DOCTYPE html>
<html lang="vi">
    <!-- header -->
    <%@ include file="/folder/header.jsp" %>
    <!-- end header -->
    <body>
        <!-- navigation -->
        <%@ include file="/folder/navigation.jsp" %>
        <!-- end navigation -->
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
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
                                            <div class="user-img" style="background-image: url(images/user4.jpg)"></div>
                                            <div class="pl-3">
                                                <p class="name">Nguyễn Văn Anh</p>
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
                                            <div class="user-img" style="background-image: url(images/user5.jpg)"></div>
                                            <div class="pl-3">
                                                <p class="name">Vũ Quốc Dũng</p>
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
                                            <div class="user-img" style="background-image: url(images/user6.jpg)"></div>
                                            <div class="pl-3">
                                                <p class="name">Trần Văn Hoàng</p>
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
                                            <div class="user-img" style="background-image: url(images/user7.jpg)"></div>
                                            <div class="pl-3">
                                                <p class="name">Dương Tuấn Anh</p>
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
                                            <div class="user-img" style="background-image: url(images/user8.jpg)"></div>
                                            <div class="pl-3">
                                                <p class="name">Nguyễn Thị Thủy</p>
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
                        <div class="work img d-flex align-items-center" style="background-image: url(images/R.jpg);">
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
                        <div class="work img d-flex align-items-center" style="background-image: url(images/OIP.jpg);">
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
                            <a href="blog-single.html" class="block-20 rounded" style="background-image: url('images/6.jpg');">
                            </a>
                            <div class="text mt-3">
                                <div class="posted mb-3 d-flex">
                                    <div class="img author" style="background-image: url(images/user8.jpg);"></div>
                                    <div class="desc pl-3">
                                        <span>Được đăng bởi Admin</span>
                                        <span>9 Tháng 10, 2024</span>
                                    </div>
                                </div>
                                <h3 class="heading"><a href="#">Điều Cần Biết Về Phục Hồi Tâm Lý Sau Chấn Thương</a></h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single.html" class="block-20 rounded" style="background-image: url('images/7.jpg');">
                            </a>
                            <div class="text mt-3">
                                <div class="posted mb-3 d-flex">
                                    <div class="img author" style="background-image: url(images/user8.jpg);"></div>
                                    <div class="desc pl-3">
                                        <span>Được đăng bởi Admin</span>
                                        <span>11 Tháng 10, 2024</span>
                                    </div>
                                </div>
                                <h3 class="heading"><a href="#">Làm Thế Nào Để Giảm Căng Thẳng Tâm Lý?</a></h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single.html" class="block-20 rounded" style="background-image: url('images/9.jpg');">
                            </a>
                            <div class="text mt-3">
                                <div class="posted mb-3 d-flex">
                                    <div class="img author" style="background-image: url(images/user8.jpg);"></div>
                                    <div class="desc pl-3">
                                        <span>Được đăng bởi Admin</span>
                                        <span>12 Tháng 10, 2024</span>
                                    </div>
                                </div>
                                <h3 class="heading"><a href="#">Tác Động Của Tâm Lý Đến Sức Khỏe Thể Chất</a></h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- footer -->
        <%@ include file="/folder/footer.jsp" %>
        <!-- end footer -->

        <!-- loader -->
        <%@ include file="/folder/loader.jsp" %>
        <!-- end loader -->

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
