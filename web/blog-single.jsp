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
                            <img src="images/6.jpg" alt="" class="img-fluid">
                        </p>
                        <h2 class="mb-3">Điều Cần Biết Về Phục Hồi Tâm Lý Sau Chấn Thương</h2>
                        <p>Phục hồi tâm lý sau chấn thương là một quá trình quan trọng giúp nạn nhân vượt qua những tổn thương tâm lý và cảm xúc do trải nghiệm đau thương. Chấn thương có thể xuất phát từ nhiều nguyên nhân khác nhau như tai nạn, bạo lực, hoặc thiên tai. Dưới đây là một số điểm cần lưu ý trong quá trình phục hồi:</p>
                        <ul>
                            <li><strong>Chấp nhận cảm xúc:</strong> Nạn nhân cần thừa nhận và chấp nhận các cảm xúc tiêu cực như sợ hãi, buồn bã, hoặc tức giận để có thể xử lý chúng.</li>
                            <li><strong>Tham gia vào hoạt động xã hội:</strong> Kết nối với bạn bè và gia đình có thể giúp nạn nhân cảm thấy được hỗ trợ và không đơn độc.</li>
                            <li><strong>Thực hành tự chăm sóc:</strong> Chăm sóc bản thân thông qua việc ăn uống lành mạnh, tập thể dục và nghỉ ngơi đầy đủ.</li>
                            <li><strong>Tìm kiếm sự hỗ trợ chuyên nghiệp:</strong> Nếu cảm xúc quá mạnh mẽ hoặc kéo dài, tìm đến các chuyên gia tâm lý để được tư vấn và hỗ trợ.</li>
                        </ul>
                        <p>Những bước này sẽ giúp nạn nhân phục hồi và trở lại cuộc sống bình thường, đồng thời tìm thấy sức mạnh nội tại để vượt qua chấn thương.</p>

                        <div class="tag-widget post-tag-container mb-5 mt-5">
                            <div class="tagcloud">
                                <a href="#" class="tag-cloud-link">Tâm lý học</a>
                                <a href="#" class="tag-cloud-link">Phục hồi</a>
                                <a href="#" class="tag-cloud-link">Chấn thương</a>
                                <a href="#" class="tag-cloud-link">Sức khỏe tâm thần</a>
                            </div>
                        </div>

                        <div class="about-author d-flex p-4 bg-light">
                            <div class="bio mr-5">
                                <img src="images/user8.jpg" alt="Hình ảnh placeholder" class="img-fluid mb-4">
                            </div>
                            <div class="desc">
                                <h3>Admin</h3>
                            </div>
                        </div>

                        <div class="pt-5 mt-5">
                            <h3 class="mb-5">3 Bình luận</h3>
                            <ul class="comment-list">
                                <li class="comment">
                                    <div class="vcard bio">
                                        <img src="images/user1.jpg" alt="Hình ảnh placeholder">
                                    </div>
                                    <div class="comment-body">
                                        <h3>Trần Văn Bình</h3>
                                        <div class="meta">05 tháng 9, 2024 lúc 10:30 sáng</div>
                                        <p>Cảm ơn bài viết rất hữu ích! Mình đã trải qua một chấn thương và những thông tin này thật sự giúp ích cho mình rất nhiều.</p>
                                        <p><a href="#" class="reply">Trả lời</a></p>
                                    </div>
                                </li>

                                <li class="comment">
                                    <div class="vcard bio">
                                        <img src="images/user2.jpg" alt="Hình ảnh placeholder">
                                    </div>
                                    <div class="comment-body">
                                        <h3>Nguyễn Thị Dung</h3>
                                        <div class="meta">15 tháng 9, 2024 lúc 3:45 chiều</div>
                                        <p>Bài viết rất hay và dễ hiểu. Mình thấy việc chấp nhận cảm xúc là rất quan trọng trong quá trình phục hồi.</p>
                                        <p><a href="#" class="reply">Trả lời</a></p>
                                    </div>
                                </li>

                                <li class="comment">
                                    <div class="vcard bio">
                                        <img src="images/user3.jpg" alt="Hình ảnh placeholder">
                                    </div>
                                    <div class="comment-body">
                                        <h3>Phạm Minh Duẩn</h3>
                                        <div class="meta">28 tháng 9, 2024 lúc 1:15 chiều</div>
                                        <p>Cảm ơn bạn đã chia sẻ! Hy vọng mọi người sẽ tìm thấy sự hỗ trợ cần thiết trong thời gian khó khăn này.</p>
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
                                <li><a href="#">Tâm lý học <span>(12)</span></a></li>
                                <li><a href="#">Chấn thương <span>(22)</span></a></li>
                                <li><a href="#">Sức khỏe tâm thần <span>(37)</span></a></li>
                                <li><a href="#">Phục hồi <span>(42)</span></a></li>
                                <li><a href="#">Chia sẻ <span>(14)</span></a></li>
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
