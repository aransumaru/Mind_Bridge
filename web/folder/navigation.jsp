<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String currentPage = request.getRequestURI(); 
    String indexPage = request.getContextPath() + "/index.jsp";
    String aboutPage = request.getContextPath() + "/about.jsp"; 
    String teamPage = request.getContextPath() + "/team.jsp";
    String servicesPage = request.getContextPath() + "/services.jsp";
    String departmentPage = request.getContextPath() + "/department.jsp"; 
    String galleryPage = request.getContextPath() + "/gallery.jsp";
    String blogPage = request.getContextPath() + "/blog.jsp"; 
    String contactPage = request.getContextPath() + "/contact.jsp";
    String quizPage = request.getContextPath() + "/quiz.jsp"; 
%>
<div class="top py-1">
    <div class="container">
        <div class="row">
            <div class="col d-flex align-items-center">
                <p class="mb-0"><a href="#">hieupthe176422@fpt.edu.vn</a> | <a href="#">Trợ Giúp</a> | </p>
            </div>
            <div class="col-4 d-flex justify-content-end">
                <div class="social-media">
                    <p class="mb-0 d-flex">
                        <a href="https://www.facebook.com/profile.php?id=61566493175150" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
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
                <a class="navbar-brand" href="index.jsp">Hòa Tâm</a>
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
                            <div class="text"><span>Gọi cho chúng tôi</span><span>(+84) 353 840 387</span></div>
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
            %>
            <!-- Nút Đăng nhập khi người dùng chưa đăng nhập -->
            <a href="login" class="btn btn-primary">Đăng nhập</a>
            <%
                } else if (request.getSession().getAttribute("role") != null) {
            %>
            <!-- Dropdown khi người dùng đã đăng nhập -->
            <div class="dropdown">
                <a href="#" class="btn btn-primary dropdown-toggle" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Tài khoản
                </a>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <!-- Trang cá nhân -->
                    <a class="dropdown-item" href="user_profile">Trang cá nhân</a>
                    <!-- Đặt lịch hẹn -->
                    <a class="dropdown-item" href="order">Đặt lịch hẹn</a>
                    <!-- Đăng xuất -->
                    <a class="dropdown-item" href="logout">Đăng xuất</a>
                </div>
            </div>
            <%
                }
            %>
        </div>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item <%= currentPage.equals(indexPage) ? "active" : "" %>">
                    <a href="index.jsp" class="nav-link">Trang Chủ</a>
                </li>
                <li class="nav-item <%= currentPage.equals(aboutPage) ? "active" : "" %>">
                    <a href="about.jsp" class="nav-link">Giới Thiệu</a>
                </li>
                <li class="nav-item <%= currentPage.equals(teamPage) ? "active" : "" %>">
                    <a href="team.jsp" class="nav-link">Đội Ngũ</a>
                </li>
                <li class="nav-item <%= currentPage.equals(servicesPage) ? "active" : "" %>">
                    <a href="services.jsp" class="nav-link">Dịch Vụ</a>
                </li>
                <li class="nav-item <%= currentPage.equals(departmentPage) ? "active" : "" %>">
                    <a href="department.jsp" class="nav-link">Gói Hội Viên</a>
                </li>
                <li class="nav-item <%= currentPage.equals(galleryPage) ? "active" : "" %>">
                    <a href="gallery.jsp" class="nav-link">Thư Viện Ảnh</a>
                </li>
                <li class="nav-item <%= currentPage.equals(blogPage) ? "active" : "" %>">
                    <a href="blog.jsp" class="nav-link">Blog</a>
                </li>
                <li class="nav-item <%= currentPage.equals(contactPage) ? "active" : "" %>">
                    <a href="contact.jsp" class="nav-link">Liên Hệ</a>
                </li>

            </ul>
        </div>
    </div>
</nav>

<!-- END nav -->