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

        <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-end">
                    <div class="col-md-9 ftco-animate pb-5">
                        <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index">Trang chủ <i class="fa fa-chevron-right"></i></a></span> <span class="mr-2"><a href="blog.html">Blog <i class="fa fa-chevron-right"></i></a></span> <span>Bài viết Blog <i class="fa fa-chevron-right"></i></span></p>
                        <h1 class="mb-0 bread">Bài viết Blog</h1>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section ftco-degree-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 ftco-animate">
                        <p>
                            <img src="images/image_2.jpg" alt="" class="img-fluid">
                        </p>
                        <h2 class="mb-3">Làm Thế Nào Để Giảm Căng Thẳng Tâm Lý?</h2>
                        <p>Căng thẳng tâm lý là một phần không thể tránh khỏi trong cuộc sống hàng ngày. Tuy nhiên, việc quản lý và giảm bớt căng thẳng là rất quan trọng để duy trì sức khỏe tâm thần. Dưới đây là một số cách hiệu quả để giảm căng thẳng tâm lý:</p>
                        <ul>
                            <li><strong>Thực hành thiền:</strong> Thiền giúp bạn tập trung vào hiện tại, giảm lo âu và cải thiện sự tập trung.</li>
                            <li><strong>Tập thể dục thường xuyên:</strong> Vận động không chỉ giúp cải thiện sức khỏe thể chất mà còn làm tăng hormone hạnh phúc, giúp bạn cảm thấy thoải mái hơn.</li>
                            <li><strong>Ngủ đủ giấc:</strong> Giấc ngủ đóng vai trò quan trọng trong việc tái tạo năng lượng và cải thiện tâm trạng.</li>
                            <li><strong>Giao tiếp xã hội:</strong> Kết nối với bạn bè và gia đình giúp bạn chia sẻ cảm xúc và cảm thấy không đơn độc.</li>
                            <li><strong>Thực hiện sở thích:</strong> Dành thời gian cho những hoạt động bạn yêu thích có thể giúp bạn thư giãn và quên đi những căng thẳng.</li>
                        </ul>
                        <p>Áp dụng những phương pháp này vào cuộc sống hàng ngày sẽ giúp bạn quản lý căng thẳng một cách hiệu quả và duy trì sự cân bằng trong cuộc sống.</p>

                        <div class="tag-widget post-tag-container mb-5 mt-5">
                            <div class="tagcloud">
                                <a href="#" class="tag-cloud-link">Căng thẳng</a>
                                <a href="#" class="tag-cloud-link">Sức khỏe tâm thần</a>
                                <a href="#" class="tag-cloud-link">Giảm stress</a>
                                <a href="#" class="tag-cloud-link">Thiền</a>
                            </div>
                        </div>

                        <div class="about-author d-flex p-4 bg-light">
                            <div class="bio mr-5">
                                <img src="images/person_1.jpg" alt="Hình ảnh placeholder" class="img-fluid mb-4">
                            </div>
                            <div class="desc">
                                <h3>Admin</h3>
                            </div>
                        </div>

                        <div class="pt-5 mt-5">
                            <h3 class="mb-5">4 Bình luận</h3>
                            <ul class="comment-list">
                                <li class="comment">
                                    <div class="vcard bio">
                                        <img src="images/person_2.jpg" alt="Hình ảnh placeholder">
                                    </div>
                                    <div class="comment-body">
                                        <h3>Nguyễn Văn An</h3>
                                        <div class="meta">10 tháng 10, 2024 lúc 2:00 chiều</div>
                                        <p>Bài viết rất hữu ích! Mình đã thực hành thiền và cảm thấy rất thư giãn.</p>
                                        <p><a href="#" class="reply">Trả lời</a></p>
                                    </div>
                                </li>

                                <li class="comment">
                                    <div class="vcard bio">
                                        <img src="images/person_3.jpg" alt="Hình ảnh placeholder">
                                    </div>
                                    <div class="comment-body">
                                        <h3>Trần Thị Bình</h3>
                                        <div class="meta">10 tháng 10, 2024 lúc 3:15 chiều</div>
                                        <p>Cảm ơn tác giả đã chia sẻ! Mình sẽ thử áp dụng các phương pháp này trong cuộc sống hàng ngày.</p>
                                        <p><a href="#" class="reply">Trả lời</a></p>
                                    </div>
                                </li>

                                <li class="comment">
                                    <div class="vcard bio">
                                        <img src="images/person_4.jpg" alt="Hình ảnh placeholder">
                                    </div>
                                    <div class="comment-body">
                                        <h3>Phạm Minh Cung</h3>
                                        <div class="meta">10 tháng 10, 2024 lúc 4:30 chiều</div>
                                        <p>Mình thấy tập thể dục thật sự giúp giảm căng thẳng. Hy vọng mọi người sẽ tìm thấy phương pháp phù hợp!</p>
                                        <p><a href="#" class="reply">Trả lời</a></p>
                                    </div>
                                </li>

                                <li class="comment">
                                    <div class="vcard bio">
                                        <img src="images/person_5.jpg" alt="Hình ảnh placeholder">
                                    </div>
                                    <div class="comment-body">
                                        <h3>Nguyễn Văn Duẩn</h3>
                                        <div class="meta">10 tháng 10, 2024 lúc 5:45 chiều</div>
                                        <p>Một bài viết rất hay! Mình sẽ bắt đầu thử thiền và xem hiệu quả như thế nào.</p>
                                        <p><a href="#" class="reply">Trả lời</a></p>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div class="comment-form-wrap pt-5">
                            <h3 class="mb-5">Để lại bình luận</h3>
                            <form action="#" class="p-5 bg-light">
                                <div class="form-group">
                                    <label for="name">Tên của bạn</label>
                                    <input type="text" class="form-control" id="name" placeholder="Nhập tên của bạn">
                                </div>
                                <div class="form-group">
                                    <label for="email">Địa chỉ email</label>
                                    <input type="text" class="form-control" id="email" placeholder="Nhập email của bạn">
                                </div>
                                <div class="form-group">
                                    <label for="message">Tin nhắn của bạn</label>
                                    <textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Viết bình luận ở đây"></textarea>
                                </div>
                                <div class="form-group">
                                    <input type="submit" value="Gửi bình luận" class="btn btn-primary">
                                </div>
                            </form>
                        </div>
                    </div> <!-- .col -->

                    <div class="col-lg-4 sidebar ftco-animate">
                        <div class="sidebar-box">
                            <h3>Danh mục</h3>
                            <ul class="categories">
                                <li><a href="#">Căng thẳng <span>(12)</span></a></li>
                                <li><a href="#">Sức khỏe tâm thần <span>(22)</span></a></li>
                                <li><a href="#">Giảm stress <span>(37)</span></a></li>
                                <li><a href="#">Thiền <span>(42)</span></a></li>
                                <li><a href="#">Sống tích cực <span>(14)</span></a></li>
                            </ul>
                        </div>

                        <div class="sidebar-box">
                            <h3>Khám phá</h3>
                            <ul class="categories">
                                <li><a href="#">Kỹ năng sống <span>(8)</span></a></li>
                                <li><a href="#">Tư vấn tâm lý <span>(15)</span></a></li>
                                <li><a href="#">Chăm sóc sức khỏe <span>(10)</span></a></li>
                                <li><a href="#">Tình yêu và hôn nhân <span>(18)</span></a></li>
                                <li><a href="#">Sống tích cực <span>(12)</span></a></li>
                            </ul>
                        </div>

                        <div class="sidebar-box">
                            <h3>Tìm kiếm</h3>
                            <form action="#" class="search-form">
                                <div class="form-group">
                                    <span class="icon fa fa-search"></span>
                                    <input type="text" class="form-control" placeholder="Tìm kiếm">
                                </div>
                            </form>
                        </div>
                    </div> <!-- .col -->
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
