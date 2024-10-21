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
                            <img src="images/image_3.jpg" alt="" class="img-fluid">
                        </p>
                        <h2 class="mb-3">Tác Động Của Tâm Lý Đến Sức Khỏe Thể Chất</h2>
                        <p>Tâm lý con người có mối liên hệ mật thiết với sức khỏe thể chất. Nghiên cứu cho thấy rằng trạng thái tâm lý có thể ảnh hưởng đến các chỉ số sức khỏe, từ khả năng miễn dịch đến nguy cơ mắc các bệnh lý nghiêm trọng. Dưới đây là một số tác động nổi bật:</p>
                        <ul>
                            <li><strong>Stress và hệ miễn dịch:</strong> Căng thẳng kéo dài có thể làm suy yếu hệ miễn dịch, khiến cơ thể dễ mắc bệnh hơn.</li>
                            <li><strong>Tâm trạng và cảm xúc:</strong> Tâm trạng tích cực có thể cải thiện sức khỏe tim mạch, trong khi tâm trạng tiêu cực có thể gây ra các vấn đề về huyết áp.</li>
                            <li><strong>Thói quen sinh hoạt:</strong> Trạng thái tâm lý ảnh hưởng đến sự lựa chọn trong chế độ ăn uống, hoạt động thể chất, và giấc ngủ.</li>
                            <li><strong>Giảm đau:</strong> Các liệu pháp tâm lý có thể giúp giảm cảm giác đau và cải thiện khả năng hồi phục của cơ thể.</li>
                            <li><strong>Chất lượng cuộc sống:</strong> Tâm lý tích cực thường đi kèm với chất lượng cuộc sống tốt hơn và khả năng đối phó với bệnh tật tốt hơn.</li>
                        </ul>
                        <p>Việc chăm sóc sức khỏe tâm thần là rất quan trọng, không chỉ để duy trì sức khỏe tinh thần mà còn để hỗ trợ sức khỏe thể chất. Hãy nhớ rằng sự liên kết giữa tâm lý và thể chất là điều không thể tách rời.</p>

                        <div class="tag-widget post-tag-container mb-5 mt-5">
                            <div class="tagcloud">
                                <a href="#" class="tag-cloud-link">Tâm lý</a>
                                <a href="#" class="tag-cloud-link">Sức khỏe</a>
                                <a href="#" class="tag-cloud-link">Căng thẳng</a>
                                <a href="#" class="tag-cloud-link">Chăm sóc sức khỏe</a>
                            </div>
                        </div>

                        <div class="about-author d-flex p-4 bg-light">
                            <div class="bio mr-5">
                                <img src="images/person_6.jpg" alt="Hình ảnh placeholder" class="img-fluid mb-4">
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
                                        <img src="images/person_7.jpg" alt="Hình ảnh placeholder">
                                    </div>
                                    <div class="comment-body">
                                        <h3>Nguyễn Thị Trang</h3>
                                        <div class="meta">11 tháng 10, 2024 lúc 1:00 chiều</div>
                                        <p>Bài viết rất hữu ích! Mình đã nhận thấy sự liên kết giữa tâm trạng của mình và sức khỏe thể chất.</p>
                                        <p><a href="#" class="reply">Trả lời</a></p>
                                    </div>
                                </li>

                                <li class="comment">
                                    <div class="vcard bio">
                                        <img src="images/person_8.jpg" alt="Hình ảnh placeholder">
                                    </div>
                                    <div class="comment-body">
                                        <h3>Trần Văn Giang</h3>
                                        <div class="meta">11 tháng 10, 2024 lúc 2:15 chiều</div>
                                        <p>Mình đồng ý! Khi mình cảm thấy căng thẳng, sức khỏe của mình cũng giảm sút. Cần chú ý hơn đến sức khỏe tâm lý.</p>
                                        <p><a href="#" class="reply">Trả lời</a></p>
                                    </div>
                                </li>

                                <li class="comment">
                                    <div class="vcard bio">
                                        <img src="images/person_9.jpg" alt="Hình ảnh placeholder">
                                    </div>
                                    <div class="comment-body">
                                        <h3>Nguyễn Văn Minh</h3>
                                        <div class="meta">11 tháng 10, 2024 lúc 3:30 chiều</div>
                                        <p>Bài viết giúp mình nhận ra rằng cần chú trọng cả tâm lý lẫn thể chất. Cảm ơn tác giả!</p>
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
                                <li><a href="#">Tâm lý <span>(12)</span></a></li>
                                <li><a href="#">Sức khỏe <span>(22)</span></a></li>
                                <li><a href="#">Căng thẳng <span>(37)</span></a></li>
                                <li><a href="#">Chăm sóc sức khỏe <span>(42)</span></a></li>
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
