<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <!-- END nav -->
            <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row no-gutters slider-text align-items-end">
                        <div class="col-md-9 ftco-animate pb-5">
                            <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.jsp">Trang chủ <i class="fa fa-chevron-right"></i></a></span> <span>Thư viện <i class="fa fa-chevron-right"></i></span></p>
                            <h1 class="mb-0 bread">Thư viện</h1>
                        </div>
                    </div>
                </div>
            </section>

            <section class="ftco-section ftco-no-pt ftco-no-pb">
                <div class="container">
                    <h1>Session List</h1>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>User Name</th>
                                <th>Therapist</th>
                                <th>Session Date</th>
                                <th>Session Time</th>
                                <th>Session Notes</th>
                                <th>Feedback</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="session" items="${sessions}">
                                <tr>
                                    <td>${session.userName}</td>
                                    <td>${session.therapistName}</td>
                                    <td>${session.sessionDate}</td>
                                    <td>${session.sessionTime}</td>
                                    <td>${session.sessionNotes}</td>
                                    <td>${session.feedback}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
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
