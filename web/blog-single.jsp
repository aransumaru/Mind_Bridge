<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <title>Mind Bridge</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">

        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="top py-1">
            <div class="container">
                <div class="row">
                    <div class="col d-flex align-items-center">
                        <p class="mb-0"><a href="#">chiropractic@email.com</a> | <a href="#">Trợ Giúp</a> | </p>
                    </div>
                    <div class="col-4 d-flex justify-content-end">
                        <div class="social-media">
                            <p class="mb-0 d-flex">
                                <a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
                                <a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
                                <a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
                                <a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-dribbble"><i class="sr-only">Dribbble</i></span></a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="wrap">
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-md-3 mb-md-0 mb-4 d-flex align-items-center">
                        <a class="navbar-brand" href="index.jsp">Mind Bridge</a>
                    </div>
                    <div class="col-md-7">
                        <div class="row">
                            <div class="col-md-8 mb-md-0 mb-3">
                                <div class="top-wrap d-flex">
                                </div>
                            </div>
                            <div class="col">
                                <div class="top-wrap d-flex">
                                    <div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-phone"></span></div>
                                    <div class="text"><span>Gọi cho chúng tôi</span><span>(+84)965 878 989</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="fa fa-bars"></span> Menu
                </button>
                <div class="order-lg-last">
                    <%
                        if (request.getSession().getAttribute("role") == null) {
                            out.println("<a href=\"login\" class=\"btn btn-primary\">Đăng nhập</a>");
                        } else if ((String)request.getSession().getAttribute("role") != null) {
                            out.println("<a href=\"user_profile.jsp\" class=\"btn btn-primary\">Profile</a>");
                            out.println("<a href=\"logout\" class=\"btn btn-primary\">Đăng xuất</a>");
                        }
                    %>
                </div>
                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item"><a href="index.jsp" class="nav-link">Trang Chủ</a></li>
                        <li class="nav-item"><a href="about.jsp" class="nav-link">Giới Thiệu</a></li>
                        <li class="nav-item"><a href="team.jsp" class="nav-link">Đội Ngũ</a></li>
                        <li class="nav-item"><a href="services.jsp" class="nav-link">Dịch Vụ</a></li>
                        <li class="nav-item"><a href="department.jsp" class="nav-link">Gói Hội Viên</a></li>
                        <li class="nav-item"><a href="gallery.jsp" class="nav-link">Thư Viện Ảnh</a></li>
                        <li class="nav-item active"><a href="blog.jsp" class="nav-link">Blog</a></li>
                        <li class="nav-item"><a href="contact.jsp" class="nav-link">Liên Hệ</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- END nav -->

        <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-end">
                    <div class="col-md-9 ftco-animate pb-5">
                        <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.jsp">Trang chủ <i class="fa fa-chevron-right"></i></a></span> <span class="mr-2"><a href="blog.html">Blog <i class="fa fa-chevron-right"></i></a></span> <span>Bài viết Blog <i class="fa fa-chevron-right"></i></span></p>
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
                            <img src="images/image_1.jpg" alt="" class="img-fluid">
                        </p>
                        <h2 class="mb-3">Một sự thật lâu đời rằng người đọc dễ bị phân tâm</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis, eius mollitia suscipit, quisquam doloremque distinctio perferendis et doloribus unde architecto optio laboriosam porro adipisci sapiente officiis nemo accusamus ad praesentium? Esse minima nisi et. Dolore perferendis, enim praesentium omnis, iste doloremque quia officia optio deserunt molestiae voluptates soluta architecto tempora.</p>
                        <p>Molestiae cupiditate inventore animi, maxime sapiente optio, illo est nemo veritatis repellat sunt doloribus nesciunt! Minima laborum magni reiciendis qui voluptate quisquam voluptatem soluta illo eum ullam incidunt rem assumenda eveniet eaque sequi deleniti tenetur dolore amet fugit perspiciatis ipsa, odit. Nesciunt dolor minima esse vero ut ea, repudiandae suscipit!</p>
                        <h2 class="mb-3 mt-5">#2. Những Chủ Đề WordPress Sáng Tạo</h2>
                        <p>Temporibus ad error suscipit exercitationem hic molestiae totam obcaecati rerum, eius aut, in. Exercitationem atque quidem tempora maiores ex architecto voluptatum aut officia doloremque. Error dolore voluptas, omnis molestias odio dignissimos culpa ex earum nisi consequatur quos odit quasi repellat qui officiis reiciendis incidunt hic non? Debitis commodi aut, adipisci.</p>
                        <p>
                            <img src="images/image_2.jpg" alt="" class="img-fluid">
                        </p>
                        <p>Quisquam esse aliquam fuga distinctio, quidem delectus veritatis reiciendis. Nihil explicabo quod, est eos ipsum. Unde aut non tenetur tempore, nisi culpa voluptate maiores officiis quis vel ab consectetur suscipit veritatis nulla quos quia aspernatur perferendis, libero sint. Error, velit, porro. Deserunt minus, quibusdam iste enim veniam, modi rem maiores.</p>
                        <p>Odit voluptatibus, eveniet vel nihil cum ullam dolores laborum, quo velit commodi rerum eum quidem pariatur! Quia fuga iste tenetur, ipsa vel nisi in dolorum consequatur, veritatis porro explicabo soluta commodi libero voluptatem similique id quidem? Blanditiis voluptates aperiam non magni. Reprehenderit nobis odit inventore, quia laboriosam harum excepturi ea.</p>
                        <div class="tag-widget post-tag-container mb-5 mt-5">
                            <div class="tagcloud">
                                <a href="#" class="tag-cloud-link">Cuộc sống</a>
                                <a href="#" class="tag-cloud-link">Thể thao</a>
                                <a href="#" class="tag-cloud-link">Công nghệ</a>
                                <a href="#" class="tag-cloud-link">Du lịch</a>
                            </div>
                        </div>

                        <div class="about-author d-flex p-4 bg-light">
                            <div class="bio mr-5">
                                <img src="images/person_1.jpg" alt="Hình ảnh placeholder" class="img-fluid mb-4">
                            </div>
                            <div class="desc">
                                <h3>George Washington</h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
                            </div>
                        </div>


                        <div class="pt-5 mt-5">
                            <h3 class="mb-5">6 Bình luận</h3>
                            <ul class="comment-list">
                                <li class="comment">
                                    <div class="vcard bio">
                                        <img src="images/person_1.jpg" alt="Hình ảnh placeholder">
                                    </div>
                                    <div class="comment-body">
                                        <h3>John Doe</h3>
                                        <div class="meta">24 tháng 2, 2020 lúc 2:21 chiều</div>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                        <p><a href="#" class="reply">Trả lời</a></p>
                                    </div>
                                </li>

                                <li class="comment">
                                    <div class="vcard bio">
                                        <img src="images/person_1.jpg" alt="Hình ảnh placeholder">
                                    </div>
                                    <div class="comment-body">
                                        <h3>John Doe</h3>
                                        <div class="meta">24 tháng 2, 2020 lúc 2:21 chiều</div>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                        <p><a href="#" class="reply">Trả lời</a></p>
                                    </div>

                                    <ul class="children">
                                        <li class="comment">
                                            <div class="vcard bio">
                                                <img src="images/person_1.jpg" alt="Hình ảnh placeholder">
                                            </div>
                                            <div class="comment-body">
                                                <h3>John Doe</h3>
                                                <div class="meta">24 tháng 2, 2020 lúc 2:21 chiều</div>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                                <p><a href="#" class="reply">Trả lời</a></p>
                                            </div>

                                            <ul class="children">
                                                <li class="comment">
                                                    <div class="vcard bio">
                                                        <img src="images/person_1.jpg" alt="Hình ảnh placeholder">
                                                    </div>
                                                    <div class="comment-body">
                                                        <h3>John Doe</h3>
                                                        <div class="meta">24 tháng 2, 2020 lúc 2:21 chiều</div>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                                        <p><a href="#" class="reply">Trả lời</a></p>
                                                    </div>

                                                    <ul class="children">
                                                        <li class="comment">
                                                            <div class="vcard bio">
                                                                <img src="images/person_1.jpg" alt="Hình ảnh placeholder">
                                                            </div>
                                                            <div class="comment-body">
                                                                <h3>John Doe</h3>
                                                                <div class="meta">24 tháng 2, 2020 lúc 2:21 chiều</div>
                                                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                                                <p><a href="#" class="reply">Trả lời</a></p>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>

                                <li class="comment">
                                    <div class="vcard bio">
                                        <img src="images/person_1.jpg" alt="Hình ảnh placeholder">
                                    </div>
                                    <div class="comment-body">
                                        <h3>John Doe</h3>
                                        <div class="meta">24 tháng 2, 2020 lúc 2:21 chiều</div>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
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
                                <li><a href="#">Công nghệ <span>(12)</span></a></li>
                                <li><a href="#">Du lịch <span>(22)</span></a></li>
                                <li><a href="#">Thể thao <span>(37)</span></a></li>
                                <li><a href="#">Sống khỏe <span>(42)</span></a></li>
                                <li><a href="#">Phát triển bản thân <span>(14)</span></a></li>
                            </ul>
                        </div>

                        <div class="sidebar-box">
                            <h3>Khám phá</h3>
                            <ul class="categories">
                                <li><a href="#">Khám phá thành phố <span>(8)</span></a></li>
                                <li><a href="#">Địa điểm du lịch <span>(15)</span></a></li>
                                <li><a href="#">Món ăn đặc sản <span>(10)</span></a></li>
                                <li><a href="#">Thời trang <span>(18)</span></a></li>
                                <li><a href="#">Sống xanh <span>(12)</span></a></li>
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


        <footer class="footer ftco-section ftco-no-pt">
            <div class="container">
                <div class="row mb-5">
                    <div class="col-md-6 col-lg">
                        <div class="ftco-footer-widget py-4 py-md-5">
                            <h2 class="logo"><a href="#">Tâm Lý Học</a></h2>
                            <p>Chúng tôi cung cấp dịch vụ tư vấn và hỗ trợ tâm lý cho những ai cần giúp đỡ trong cuộc sống hàng ngày. Hãy để chúng tôi đồng hành cùng bạn trên hành trình tìm kiếm sức khỏe tâm thần.</p>
                            <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-4">
                                <li class="ftco-animate"><a href="#"><span class="fa fa-twitter"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="fa fa-facebook"></span></a></li>
                                <li class="ftco-animate"><a href="#"><span class="fa fa-instagram"></span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg">
                        <div class="ftco-footer-widget ml-md-5 py-5">
                            <h2 class="ftco-heading-2">Dịch Vụ</h2>
                            <ul class="list-unstyled">
                                <li><a href="#" class="py-1 d-block"><span class="fa fa-check mr-3"></span>Tư vấn tâm lý</a></li>
                                <li><a href="#" class="py-1 d-block"><span class="fa fa-check mr-3"></span>Hỗ trợ tâm lý</a></li>
                                <li><a href="#" class="py-1 d-block"><span class="fa fa-check mr-3"></span>Chương trình phục hồi tâm lý</a></li>
                                <li><a href="#" class="py-1 d-block"><span class="fa fa-check mr-3"></span>Tham vấn cho trẻ em</a></li>
                                <li><a href="#" class="py-1 d-block"><span class="fa fa-check mr-3"></span>Đào tạo kỹ năng quản lý cảm xúc</a></li>
                                <li><a href="#" class="py-1 d-block"><span class="fa fa-check mr-3"></span>Hỗ trợ tâm lý cho gia đình</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg">
                        <div class="ftco-footer-widget py-4 py-md-5">
                            <h2 class="ftco-heading-2">Thông tin liên hệ</h2>
                            <div class="block-23 mb-3">
                                <ul>
                                    <li><a href="#"><span class="icon fa fa-phone"></span><span class="text">(+84)965 878 989</span></a></li>
                                    <li><a href="#"><span class="icon fa fa-paper-plane"></span><span class="text">info@domaincuaban.com</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg">
                        <div class="ftco-footer-widget bg-primary p-4 py-5">
                            <h2 class="ftco-heading-2">Giờ làm việc</h2>
                            <div class="opening-hours">
                                <h4>Ngày mở cửa:</h4>
                                <p class="pl-3">
                                    <span>Thứ Hai – Thứ Sáu : 9am đến 8pm</span>
                                    <span>Thứ Bảy : 9am đến 5pm</span>
                                </p>
                                <h4>Ngày nghỉ:</h4>
                                <p class="pl-3">
                                    <span>Tất cả các ngày Chủ Nhật</span>
                                    <span>Tất cả các ngày lễ</span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Bản quyền &copy;<script>document.write(new Date().getFullYear());</script> Tất cả quyền được bảo lưu | Mẫu này được thực hiện với <i class="fa fa-heart" aria-hidden="true"></i> bởi <a href="https://colorlib.com" target="_blank">Colorlib</a>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                </div>
            </div>
        </footer>



        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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
