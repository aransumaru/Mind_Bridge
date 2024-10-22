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
        <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-end">
                    <div class="col-md-9 ftco-animate pb-5">
                        <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index">Trang chủ <i class="fa fa-chevron-right"></i></a></span> <span>Giới thiệu <i class="fa fa-chevron-right"></i></span></p>
                        <h1 class="mb-0 bread">Giới thiệu về chúng tôi</h1>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section ftco-no-pt ftco-no-pb">
            <div class="container">
                <div class="row d-flex no-gutters">
                    <div class="col-md-6 d-flex order-md-last">
                        <div class="img img-video d-flex align-self-stretch align-items-center justify-content-center mb-4 mb-sm-0" style="background-image:url(images/about.jpg);">
                            <a href="https://vimeo.com/45830194" class="icon-video popup-vimeo d-flex justify-content-center align-items-center">
                                <span class="fa fa-play"></span>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6 pr-md-5 py-md-5">
                        <div class="row justify-content-start py-5">
                            <div class="col-md-12 heading-section ftco-animate">
                                <span class="subheading">Chào mừng đến với Tâm Lý Học</span>
                                <h2 class="mb-4">Về Tâm Lý Học</h2>
                                <p>Tâm lý học là một lĩnh vực nghiên cứu về hành vi và tâm trí con người. Chúng tôi cam kết cung cấp dịch vụ tư vấn tâm lý chất lượng cao nhằm giúp bạn vượt qua những khó khăn trong cuộc sống. Tại đây, bạn sẽ tìm thấy sự hỗ trợ và hướng dẫn cần thiết để cải thiện sức khỏe tâm thần.</p>
                            </div>
                        </div>
                        <div class="row ftco-counter pb-5" id="section-counter">
                            <div class="col-md-6 col-lg-4 d-flex justify-content-center counter-wrap ftco-animate">
                                <div class="block-18">
                                    <div class="text">
                                        <strong class="number" data-number="20">0</strong>
                                    </div>
                                    <div class="text">
                                        <span>Năm <br>Kinh nghiệm</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4 d-flex justify-content-center counter-wrap ftco-animate">
                                <div class="block-18">
                                    <div class="text">
                                        <strong class="number" data-number="1500">0</strong>
                                    </div>
                                    <div class="text">
                                        <span>Khách hàng <br>Hạnh phúc</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-4 d-flex justify-content-center counter-wrap ftco-animate">
                                <div class="block-18">
                                    <div class="text">
                                        <strong class="number" data-number="5">0</strong>
                                    </div>
                                    <div class="text">
                                        <span>Giải thưởng <br>Xuất sắc</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <h4>Lịch sử Tâm Lý Học</h4>
                        <p>Tâm lý học đã có một lịch sử dài và phong phú, bắt đầu từ những nghiên cứu đầu tiên về tâm trí con người cho đến những phương pháp trị liệu hiện đại. Qua các thập kỷ, chúng tôi đã phát triển nhiều phương pháp và kỹ thuật để hỗ trợ khách hàng trong việc tìm kiếm sức khỏe tâm thần. Với đội ngũ chuyên gia giàu kinh nghiệm, chúng tôi tự hào mang đến dịch vụ tư vấn tâm lý tốt nhất cho cộng đồng.</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section testimony-section bg-dark">
            <div class="container">
                <div class="row justify-content-center pb-5 mb-3">
                    <div class="col-md-7 heading-section heading-section-white text-center ftco-animate">
                        <span class="subheading">Phản hồi từ khách hàng</span>
                        <h2>Khách hàng hài lòng &amp; Ý kiến</h2>
                    </div>
                </div>
                <div class="row ftco-animate">
                    <div class="col-md-12">
                        <div class="carousel-testimony owl-carousel ftco-owl">
                            <div class="item">
                                <div class="testimony-wrap py-4">
                                    <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                                    <div class="text">
                                        <p class="mb-4">Tôi đã tìm thấy sự hỗ trợ rất cần thiết từ dịch vụ tư vấn tâm lý này. Nó đã giúp tôi vượt qua nhiều khó khăn trong cuộc sống.</p>
                                        <div class="d-flex align-items-center">
                                            <div class="user-img" style="background-image: url(images/person_1.jpg)"></div>
                                            <div class="pl-3">
                                                <p class="name">Nguyễn Văn A</p>
                                                <span class="position">Khách hàng</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="testimony-wrap py-4">
                                    <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                                    <div class="text">
                                        <p class="mb-4">Dịch vụ tư vấn rất chuyên nghiệp và tận tình. Tôi cảm thấy được lắng nghe và thấu hiểu.</p>
                                        <div class="d-flex align-items-center">
                                            <div class="user-img" style="background-image: url(images/person_2.jpg)"></div>
                                            <div class="pl-3">
                                                <p class="name">Trần Thị B</p>
                                                <span class="position">Khách hàng</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="testimony-wrap py-4">
                                    <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                                    <div class="text">
                                        <p class="mb-4">Tôi rất biết ơn vì đã tìm thấy dịch vụ này. Nó đã giúp tôi rất nhiều trong việc cải thiện sức khỏe tâm thần của mình.</p>
                                        <div class="d-flex align-items-center">
                                            <div class="user-img" style="background-image: url(images/person_3.jpg)"></div>
                                            <div class="pl-3">
                                                <p class="name">Lê Văn C</p>
                                                <span class="position">Khách hàng</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="testimony-wrap py-4">
                                    <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                                    <div class="text">
                                        <p class="mb-4">Dịch vụ đã mang lại cho tôi sự an tâm và giúp tôi tìm lại được chính mình.</p>
                                        <div class="d-flex align-items-center">
                                            <div class="user-img" style="background-image: url(images/person_1.jpg)"></div>
                                            <div class="pl-3">
                                                <p class="name">Phạm Thị D</p>
                                                <span class="position">Khách hàng</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="testimony-wrap py-4">
                                    <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-quote-left"></span></div>
                                    <div class="text">
                                        <p class="mb-4">Một trải nghiệm tuyệt vời! Tôi đã tìm thấy sự hỗ trợ mà tôi cần để vượt qua những thách thức trong cuộc sống.</p>
                                        <div class="d-flex align-items-center">
                                            <div class="user-img" style="background-image: url(images/person_2.jpg)"></div>
                                            <div class="pl-3">
                                                <p class="name">Nguyễn Thị E</p>
                                                <span class="position">Khách hàng</span>
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
F        <!-- footer -->
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
