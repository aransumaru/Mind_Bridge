<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="Model.User" %>
<%

    User user = (User) request.getSession().getAttribute("user");
%>
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
                        <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index">Trang chủ <i class="fa fa-chevron-right"></i></a></span> <span>Các Gói Hội Viên <i class="fa fa-chevron-right"></i></span></p>
                        <h1 class="mb-0 bread">Các Gói Hội Viên</h1>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section">
            <div class="container">
                <div class="row dept align-items-center">
                    <div class="col-md-6 pr-md-5">
                        <h2>Gói Miễn Phí (Free Member)</h2>
                        <h4>Quyền Lợi:</h4>
                        <ul>
                            <li>Truy cập vào một số tài nguyên cơ bản như bài viết, video hướng dẫn, và podcast về sức khỏe tâm lý.</li>
                            <li>Tham gia các hoạt động chữa lành tâm lý cộng đồng trực tuyến.</li>
                            <li>Sử dụng các công cụ tự giúp đỡ như nhật ký tâm lý, bảng câu hỏi đánh giá tâm lý.</li>
                        </ul>
                        <h4>Hạn Chế:</h4>
                        <ul>
                            <li>Số lượng tài liệu và công cụ hạn chế.</li>
                            <li>Không có quyền truy cập vào các buổi trị liệu trực tuyến cá nhân.</li>
                            <li>Không có hàng chờ ưu tiên.</li>
                        </ul>
                        <a href="quiz.jsp" class="btn btn-primary">Đánh giá tâm lý miễn phí</a>

                    </div>
                    <div class="col-md-6 img" style="background-image: url(images/free-member.jpg);"></div>
                </div>
                <form action="department" method="post">
                    <div class="row dept align-items-center">
                        <div class="col-md-6 pl-md-5 order-md-last">
                            <h2>Gói Cơ Bản (Basic Member)</h2>
                            <h4>Phí:</h4>
                            <p style="font-size: 2rem;">49.000 VND</p>
                            <h4>Quyền Lợi:</h4>
                            <h5>Bác sĩ</h5>
                            <ul>
                                <li>Phù hợp cho sinh viên năm cuối hoặc những bác sĩ mới ra trường, cung cấp môi trường thực hành và hỗ trợ trong công tác tư vấn tâm lý ban đầu.</li>
                            </ul>
                            <h5>Khách hàng</h5>
                            <ul>
                                <li>Truy cập đầy đủ vào tất cả các tài liệu, bài viết, video và podcast.</li>
                                <li>Sử dụng các công cụ tự giúp đỡ và nhận được phản hồi từ nhà điều trị.</li>
                                <li>Các buổi trị liệu kéo dài 1 tiếng, giúp khách hàng hiểu hơn về bản thân và giải quyết các vấn đề tâm lý cơ bản.</li>
                                <li>Thích hợp cho những người có nhu cầu tư vấn sức khỏe tâm lý nhưng chưa cần chuyên sâu.</li>
                            </ul>
                            <input type="hidden" name="package" value="basic">
                            <%
                                if (request.getSession().getAttribute("role") == null) {
                                    out.println("<a href=\"login\" class=\"btn btn-primary\">Đăng ký ngay</a>");
                                } else {
                                    out.println("<button type=\"submit\" class=\"btn btn-primary\">Đăng ký ngay</button>");
                                }
                            %>
                        </div>
                        <div class="col-md-6 img" style="background-image: url(images/basic-member.jpg);"></div>
                    </div>
                </form>
                <form action="department" method="post">
                    <div class="row dept align-items-center">
                        <div class="col-md-6 pr-md-5">
                            <h2>Gói Cao Cấp (Premium Member)</h2>
                            <h4>Phí:</h4>
                            <p style="font-size: 2rem;">99.000 VND</p>
                            <h4>Quyền Lợi:</h4>
                            <h5>Bác sĩ</h5>
                            <ul>
                                <li>Thích hợp cho các bác sĩ không chuyên, hỗ trợ trong việc mở rộng phạm vi dịch vụ và gia tăng trải nghiệm thực tế.</li>
                            </ul>
                            <h5>Khách hàng</h5>
                            <ul>
                                <li>Truy cập đầy đủ vào tất cả các tài liệu, bài viết, video và podcast.</li>
                                <li>Sử dụng các công cụ tự giúp đỡ và nhận được phản hồi từ nhà điều trị.</li>
                                <li>Thời lượng buổi trị liệu tùy theo sự sắp xếp của bác sĩ, có thể linh hoạt để phù hợp với từng trường hợp cụ thể.</li>
                                <li>Được thiết kế cho khách hàng cần tư vấn cụ thể hơn nhưng chưa cần sự chăm sóc đặc biệt.</li>
                            </ul>
                            <input type="hidden" name="package" value="premium">
                            <%
                            if (request.getSession().getAttribute("role") == null) {
                                out.println("<a href=\"login\" class=\"btn btn-primary\">Đăng ký ngay</a>");
                            } else if ((String)request.getSession().getAttribute("role") != null) {
                                out.println("<button type=\"submit\" class=\"btn btn-primary\">Đăng ký ngay</button>");
                            }
                            %>
                        </div>
                        <div class="col-md-6 img" style="background-image: url(images/premium-member.jpg);"></div>
                    </div>
                </form>
                <form action="department" method="post">
                    <div class="row dept align-items-center">
                        <div class="col-md-6 pl-md-5 order-md-last">
                            <h2>Gói Đặc Biệt (Elite Member)</h2>
                            <h4>Phí:</h4>
                            <p style="font-size: 2rem;">199.000 VND</p>
                            <h4>Quyền Lợi:</h4>
                            <h5>Bác sĩ</h5>
                            <ul>
                                <li>Dành cho các bác sĩ có chuyên môn cao, đã trải qua đào tạo bài bản trong ngành tâm lý trị liệu, hỗ trợ nâng cao uy tín và xây dựng thương hiệu cá nhân.</li>
                            </ul>
                            <h5>Khách hàng</h5>
                            <ul>
                                <li>Truy cập đầy đủ vào tất cả các tài liệu, bài viết, video và podcast.</li>
                                <li>Sử dụng các công cụ tự giúp đỡ và nhận được phản hồi từ nhà điều trị.</li>
                                <li>Thời lượng các buổi trị liệu được tùy chỉnh theo yêu cầu và chỉ định của bác sĩ để đảm bảo chất lượng tốt nhất.</li>
                                <li>Phù hợp với khách hàng cần tư vấn chuyên sâu, đặc biệt là những người cần được chăm sóc kỹ lưỡng và liên tục trong các vấn đề tâm lý.</li>
                            </ul>
                            <input type="hidden" name="package" value="elite">
                            <%
                            if (request.getSession().getAttribute("role") == null) {
                                out.println("<a href=\"login\" class=\"btn btn-primary\">Đăng ký ngay</a>");
                            } else if ((String)request.getSession().getAttribute("role") != null) {
                                out.println("<button type=\"submit\" class=\"btn btn-primary\">Đăng ký ngay</button>");
                            }
                            %>
                        </div>
                        <div class="col-md-6 img" style="background-image: url(images/elite-member.jpg);"></div>
                    </div>
                </form>

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