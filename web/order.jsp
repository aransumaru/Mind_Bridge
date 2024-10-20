<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <!-- header -->
    <%@ include file="/folder/header.jsp" %>
    <!-- end header -->
    <body>
        <!-- navigation -->
        <%@ include file="/folder/navigation.jsp" %>
        <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-end">

                </div>
            </div>
        </section>
        <section class="ftco-appointment ftco-section ftco-no-pt ftco-no-pb">
            <div class="overlay"></div>
            <div class="container">
                <div class="row d-md-flex justify-content-center">
                    <div class="col-md-12">
                        <div class="wrap-appointment d-md-flex">
                            <div class="col-md-8 bg-primary p-5 heading-section heading-section-white">
                                <span class="subheading">Đặt Lịch Hẹn</span>
                                <h2 class="mb-4">Tư Vấn Đặc Biệt</h2>
                                <form action="order" method="post" class="appointment">
                                    <div class="row justify-content-center">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="customer_name" placeholder="Tên của bạn" required>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="phone" placeholder="Số điện thoại" required>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="form-field">
                                                    <div class="select-wrap">
                                                        <div class="icon"><span class="fa fa-chevron-down"></span></div>
                                                        <select name="therapist_id" id="therapist_id" class="form-control" required>
                                                            <option value="">Chọn Bác Sĩ Chuyên Khoa</option>
                                                            <c:forEach var="therapist" items="${therapists}">
                                                                <option value="${therapist.getTherapistId()}">${therapist.getUser().getName()}</option>
                                                            </c:forEach>
                                                        </select>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="input-wrap">
                                                    <input type="date" class="form-control" name="session_date" placeholder="Ngày" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <div class="input-wrap">
                                                    <input type="time" class="form-control" name="session_time" placeholder="Giờ" required>
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
                                    <span class="phone">(+84)353 840 387</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- footer -->
        <%@ include file="/folder/footer.jsp" %>
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