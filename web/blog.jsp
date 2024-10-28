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
        <!-- END nav -->
        <section class="hero-wrap hero-wrap-2" style="background-image: url('images/logo1.jpg');" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-end">
                    <div class="col-md-9 ftco-animate pb-5">
                        <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index">Trang chủ <i class="fa fa-chevron-right"></i></a></span> <span>Blog <i class="fa fa-chevron-right"></i></span></p>
                        <h1 class="mb-0 bread">Blog Tâm Lý</h1>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="#" class="block-20 rounded" style="background-image: url('images/6.jpg');">
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
                                <p>Một con sông nhỏ tên là Duden chảy qua nơi họ sống và cung cấp những điều cần thiết cho cuộc sống hàng ngày. Đó là một vùng đất lý tưởng, nơi mà những phần câu chữ nướng chín bay vào miệng bạn.</p>
                                <c:if test="${user.level == 2}">
                                    <p><a href="blog-single.jsp" class="btn btn-primary">Đọc thêm</a></p>
                                </c:if>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="#" class="block-20 rounded" style="background-image: url('images/7.jpg');">
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
                                <p>Giảm căng thẳng là rất quan trọng để duy trì sức khỏe tâm lý. Hãy cùng tìm hiểu những phương pháp hiệu quả giúp bạn thư giãn và lấy lại cân bằng trong cuộc sống.</p>
                                <c:if test="${user.level == 2}">
                                    <p><a href="blog-single2.jsp" class="btn btn-primary">Đọc thêm</a></p>
                                </c:if>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="#" class="block-20 rounded" style="background-image: url('images/9.jpg');">
                            </a>
                            <div class="text mt-3">
                                <div class="posted mb-3 d-flex">
                                    <div class="img author" style="background-image: url(images/user8.jpg);"></div>
                                    <div class="desc pl-3">
                                        <span>Được đăng bởi Admin</span>
                                        <span>11 Tháng 10, 2024</span>
                                    </div>
                                </div>
                                <h3 class="heading"><a href="#">Tác Động Của Tâm Lý Đến Sức Khỏe Thể Chất</a></h3>
                                <p>Tâm lý có mối liên hệ chặt chẽ với sức khỏe thể chất. Hãy cùng khám phá cách mà sức khỏe tâm lý có thể ảnh hưởng đến cơ thể và ngược lại.</p>
                                <c:if test="${user.level == 2}">
                                    <p><a href="blog-single3.jsp" class="btn btn-primary">Đọc thêm</a></p>
                                </c:if>
                            </div>
                        </div>
                    </div>

                    <!-- Thêm nhiều bài viết nữa ở đây -->

                </div>
                <div class="row mt-5">
                    <div class="col text-center">
                        <div class="block-27">
                            <ul>
                                <li><a href="#">&lt;</a></li>
                                <li class="active"><span>1</span></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">&gt;</a></li>
                            </ul>
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
