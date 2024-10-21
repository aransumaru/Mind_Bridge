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
                        <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.jsp">Trang chủ <i class="fa fa-chevron-right"></i></a></span> <span>Đội ngũ <i class="fa fa-chevron-right"></i></span></p>
                        <h1 class="mb-0 bread">Chuyên gia Tâm lý của chúng tôi</h1>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section">
            <div class="container">
                <div class="row no-gutters justify-content-center pb-5 mb-3">
                    <div class="col-md-7 heading-section text-center ftco-animate">
                        <span class="subheading">Đội ngũ &amp; Nhân viên</span>
                        <h2>Chuyên gia Tâm lý / Nhà trị liệu của chúng tôi</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 ftco-animate d-flex">
                        <div class="staff bg-primary">
                            <div class="img-wrap d-flex align-items-stretch">
                                <div class="img align-self-stretch" style="background-image: url(images/staff-1.jpg);"></div>
                            </div>
                            <div class="text pt-3 px-3 pb-4 text-center">
                                <h3>Lloyd Wilson</h3>
                                <span class="position mb-2">Giám đốc Y tế</span>
                                <div class="faded">
                                    <p>Tôi là một người tham vọng và làm việc chăm chỉ, nhưng bên cạnh đó, tôi là một người khá đơn giản.</p>
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
                    <div class="col-md-4 ftco-animate d-flex">
                        <div class="staff bg-primary">
                            <div class="img-wrap d-flex align-items-stretch">
                                <div class="img align-self-stretch" style="background-image: url(images/staff-2.jpg);"></div>
                            </div>
                            <div class="text pt-3 px-3 pb-4 text-center">
                                <h3>Rachel Parker</h3>
                                <span class="position mb-2">Nhà trị liệu Tâm lý</span>
                                <div class="faded">
                                    <p>Tôi là một người tham vọng và làm việc chăm chỉ, nhưng bên cạnh đó, tôi là một người khá đơn giản.</p>
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
                    <div class="col-md-4 ftco-animate d-flex">
                        <div class="staff bg-primary">
                            <div class="img-wrap d-flex align-items-stretch">
                                <div class="img align-self-stretch" style="background-image: url(images/staff-3.jpg);"></div>
                            </div>
                            <div class="text pt-3 px-3 pb-4 text-center">
                                <h3>Ian Smith</h3>
                                <span class="position mb-2">Trợ lý Tâm lý lâm sàng</span>
                                <div class="faded">
                                    <p>Tôi là một người tham vọng và làm việc chăm chỉ, nhưng bên cạnh đó, tôi là một người khá đơn giản.</p>
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
                    <div class="col-md-4 ftco-animate d-flex">
                        <div class="staff bg-primary">
                            <div class="img-wrap d-flex align-items-stretch">
                                <div class="img align-self-stretch" style="background-image: url(images/staff-4.jpg);"></div>
                            </div>
                            <div class="text pt-3 px-3 pb-4 text-center">
                                <h3>Alicia Henderson</h3>
                                <span class="position mb-2">Nhà trị liệu massage</span>
                                <div class="faded">
                                    <p>Tôi là một người tham vọng và làm việc chăm chỉ, nhưng bên cạnh đó, tôi là một người khá đơn giản.</p>
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
                    <div class="col-md-4 ftco-animate d-flex">
                        <div class="staff bg-primary">
                            <div class="img-wrap d-flex align-items-stretch">
                                <div class="img align-self-stretch" style="background-image: url(images/staff-5.jpg);"></div>
                            </div>
                            <div class="text pt-3 px-3 pb-4 text-center">
                                <h3>Lloyd Wilson</h3>
                                <span class="position mb-2">Điều phối viên quầy tiếp tân</span>
                                <div class="faded">
                                    <p>Tôi là một người tham vọng và làm việc chăm chỉ, nhưng bên cạnh đó, tôi là một người khá đơn giản.</p>
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
                    <div class="col-md-4 ftco-animate d-flex">
                        <div class="staff bg-primary">
                            <div class="img-wrap d-flex align-items-stretch">
                                <div class="img align-self-stretch" style="background-image: url(images/staff-6.jpg);"></div>
                            </div>
                            <div class="text pt-3 px-3 pb-4 text-center">
                                <h3>John Doe</h3>
                                <span class="position mb-2">Nhà tâm lý học</span>
                                <div class="faded">
                                    <p>Tôi là một người tham vọng và làm việc chăm chỉ, nhưng bên cạnh đó, tôi là một người khá đơn giản.</p>
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
