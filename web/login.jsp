<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Đăng nhập</title>
        <link rel="stylesheet" href="css/register.css"> <!-- Link to your external CSS file -->
        <style>
            /* Additional styles for the MIND BRIDGE link */
            .mind-bridge {
                position: absolute; /* Position it in the top left corner */
                top: 20px; /* Adjust as needed */
                left: 20px; /* Adjust as needed */
                font-size: 24px; /* Adjust font size */
                text-decoration: none; /* Remove underline */
                color: #000; /* Change color as needed */
            }
            .mind-bridge:hover {
                color: #007BFF; /* Change color on hover */
            }
        </style>
    </head>
    <body>
        <a href="index.jsp" class="mind-bridge">MIND BRIDGE</a> <!-- Link to index.jsp -->
        <div class="container">
            <!-- Title section -->
            <div class="title">Đăng nhập</div>
            <div class="content">
                <form action="login" method="post">
                    <div class="user-details">
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
                    </div>
                    <!-- Submit button -->
                    <div class="button">
                        <input type="submit" value="Đăng nhập">
                    </div>
                    <!-- Link to registration page -->
                    <div class="signup-link">
                        Không có tài khoản? <a href="register">Đăng ký</a>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
