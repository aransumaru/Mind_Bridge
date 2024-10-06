<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Đăng ký</title>
        <link rel="stylesheet" href="css/register.css"> <!-- Link to your external CSS file -->
    </head>
    <body>
        <div class="container">
            <!-- Title section -->
            <div class="title">Đăng ký</div>
            <div class="content">
                <c:if test="${not empty errorMessage}">
                    <div class="error-message" style="color: red;">${errorMessage}</div>
                </c:if>
                <!-- Registration form -->
                <form action="register" method="post" enctype="multipart/form-data"> 
                    <div class="user-details">
                        <!-- Input for Full Name -->
                        <div class="input-box">
                            <span class="details">Họ và Tên</span>
                            <input type="text" name="name" placeholder="Enter your name" required>
                        </div>
                        <!-- Input for Email -->
                        <div class="input-box">
                            <span class="details">Email</span>
                            <input type="email" name="email" placeholder="Enter your email" required>
                        </div>
                        <!-- Input for Password -->
                        <div class="input-box">
                            <span class="details">Mật khẩu</span>
                            <input type="password" name="password" placeholder="Enter your password" required>
                        </div>
                        <!-- Input for Confirm Password -->
                        <div class="input-box">
                            <span class="details">Nhập lại mật khẩu</span>
                            <input type="password" name="confirmPassword" placeholder="Confirm your password" required>
                        </div>
                        <!-- Input for Date of Birth -->
                        <div class="input-box">
                            <span class="details">Ngày sinh</span>
                            <input type="date" name="date_of_birth" required>
                        </div>
                        <!-- Input for Profile Image (File Upload) -->
                        <div class="input-box">
                            <span class="details">Ảnh đại diện</span>
                            <input type="file" name="profile_image" accept="image/*" required> <!-- Added required attribute -->
                        </div>
                        <!-- Role selection (Dropdown) -->
                        <div class="input-box">
                            <span class="details">Role</span>
                            <select name="role" required> <!-- Added required attribute -->
                                <option value="">Chọn vai trò</option> <!-- Placeholder option -->
                                <option value="Khách hàng">Khách hàng</option>
                                <option value="Nhà điều trị tâm lý">Nhà điều trị tâm lý</option>
                            </select>
                        </div>
                    </div>

                    <!-- Gender selection -->
                    <div class="gender-details" required> <!-- Gender selection is already required -->
                        <input type="radio" name="gender" id="dot-1" value="Male" required>
                        <input type="radio" name="gender" id="dot-2" value="Female" required>
                        <input type="radio" name="gender" id="dot-3" value="Prefer not to say" required>
                        <span class="gender-title">Giới tính</span>
                        <div class="category">
                            <label for="dot-1">
                                <span class="dot one"></span>
                                <span class="gender">Nam</span>
                            </label>
                            <label for="dot-2">
                                <span class="dot two"></span>
                                <span class="gender">Nữ</span>
                            </label>
                            <label for="dot-3">
                                <span class="dot three"></span>
                                <span class="gender">Không muốn nói</span>
                            </label>
                        </div>
                    </div>

                    <!-- Submit button -->
                    <div class="button">
                        <input type="submit" value="Register">
                    </div>

                    <div class="signup-link">
                        Đã có tài khoản? <a href="login.html">Đăng nhập</a>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
