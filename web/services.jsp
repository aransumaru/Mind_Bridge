<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="Model.User" scope="session" />
<!DOCTYPE html>
<html lang="vi">
<html lang="vi">
    <!-- header -->
    <%@ include file="/folder/header.jsp" %>
    <!-- end header -->
    <body>
        <!-- navigation -->
        <%@ include file="/folder/navigation.jsp" %>
        <!-- end navigation -->
        <section class="hero-wrap hero-wrap-2" style="background-image: url('images/logo1.jpg');" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-end">
                    <div class="col-md-9 ftco-animate pb-5">
                        <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index">Trang chủ <i class="fa fa-chevron-right"></i></a></span> <span>Dịch vụ <i class="fa fa-chevron-right"></i></span></p>
                        <h1 class="mb-0 bread">Dịch vụ</h1>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center mb-5">
                    <div class="col-md-8 text-center heading-section ftco-animate">
                        <span class="subheading">Dịch vụ</span>
                        <h2 class="mb-4">Tại sao chọn chúng tôi?</h2>
                        <p>Chúng tôi cung cấp các dịch vụ tâm lý chuyên nghiệp để hỗ trợ sức khỏe tinh thần của bạn. Chúng tôi cam kết mang đến môi trường an toàn và thân thiện cho tất cả mọi người.</p>
                    </div>
                </div>
                <div class="row tabulation mt-4 ftco-animate">
                    <div class="col-md-4">
                        <ul class="nav nav-pills nav-fill d-md-flex d-block flex-column">
                            <li class="nav-item text-left">
                                <a class="nav-link active py-4" data-toggle="tab" href="#services-1"><span class="flaticon-therapy mr-2"></span> Tư vấn Tâm lý</a>
                            </li>
                            <li class="nav-item text-left">
                                <a class="nav-link py-4" data-toggle="tab" href="#services-2"><span class="flaticon-mind mr-2"></span> Trị liệu Tâm lý</a>
                            </li>
                            <li class="nav-item text-left">
                                <a class="nav-link py-4" data-toggle="tab" href="#services-3"><span class="flaticon-meditation mr-2"></span> Thiền và Thư giãn</a>
                            </li>
                            <li class="nav-item text-left">
                                <a class="nav-link py-4" data-toggle="tab" href="#services-4"><span class="flaticon-coaching mr-2"></span> Huấn luyện Tâm lý</a>
                            </li>
                            <li class="nav-item text-left">
                                <a class="nav-link py-4" data-toggle="tab" href="#services-5"><span class="flaticon-stress mr-2"></span> Giảm căng thẳng</a>
                            </li>
                            <li class="nav-item text-left">
                                <a class="nav-link py-4" data-toggle="tab" href="#services-6"><span class="flaticon-support mr-2"></span> Kiểm tra tâm lý miễn phí</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content">
                            <div class="tab-pane container p-0 active" id="services-1">
                                <div class="img" style="background-image: url(images/work-2.jpg);"></div>
                                <h3><a href="#">Tư vấn Tâm lý</a></h3>
                                <p>Chúng tôi cung cấp dịch vụ tư vấn cá nhân và nhóm để giúp bạn khám phá và hiểu rõ hơn về cảm xúc, suy nghĩ, và hành vi của mình.</p>
                            </div>
                            <div class="tab-pane container p-0 fade" id="services-2">
                                <div class="img" style="background-image: url(images/work-3.jpg);"></div>
                                <h3><a href="#">Trị liệu Tâm lý</a></h3>
                                <p>Dịch vụ trị liệu tâm lý của chúng tôi giúp bạn vượt qua những khó khăn trong cuộc sống, cải thiện sức khỏe tâm thần và tạo ra những thay đổi tích cực.</p>
                            </div>
                            <div class="tab-pane container p-0 fade" id="services-3">
                                <div class="img" style="background-image: url(images/work-4.jpg);"></div>
                                <h3><a href="#">Thiền và Thư giãn</a></h3>
                                <p>Chúng tôi tổ chức các buổi thiền và thư giãn để giúp bạn giảm căng thẳng, lo âu, và cải thiện tâm trạng.</p>
                            </div>
                            <div class="tab-pane container p-0 fade" id="services-4">
                                <div class="img" style="background-image: url(images/work-5.jpg);"></div>
                                <h3><a href="#">Huấn luyện Tâm lý</a></h3>
                                <p>Chúng tôi cung cấp dịch vụ huấn luyện tâm lý để hỗ trợ bạn phát triển bản thân, xây dựng kỹ năng sống và đạt được mục tiêu cá nhân.</p>
                            </div>
                            <div class="tab-pane container p-0 fade" id="services-5">
                                <div class="img" style="background-image: url(images/work-6.jpg);"></div>
                                <h3><a href="#">Giảm căng thẳng</a></h3>
                                <p>Chúng tôi cung cấp các phương pháp giảm căng thẳng hiệu quả giúp bạn lấy lại sự cân bằng trong cuộc sống.</p>
                            </div>
                            <div class="tab-pane container p-0 fade" id="services-6">
                                <div class="img" style="background-image: url(images/work-1.jpg);"></div>
                                <h3><a href="#">Kiểm tra tâm lý miễn phí</a></h3>
                                <p>Cung cấp dịch vụ hỗ trợ kiểm tra tâm lý miễn phí qua Bài Test đánh giá Lo âu - Trầm cảm - Stress (DASS 21) tại <a href="quiz.jsp">Đây</a>.</p>
                            </div>
                        </div>
                        <a href="https://docs.google.com/forms/d/e/1FAIpQLSeeBeYZUISzl_uCnnuHvYCAlPJCRcH4SyeX8N23Xu00TSIhcg/viewform?usp=sharing" class="btn btn-primary">Đánh giá</a>
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
