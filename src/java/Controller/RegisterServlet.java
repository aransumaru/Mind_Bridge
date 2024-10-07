/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Dao.UserDAO;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Hello
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
@MultipartConfig
public class RegisterServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Forward to the registration JSP page
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get form data
        String email = request.getParameter("email");
        System.out.println("Email entered: " + email);
        String password = request.getParameter("password");
        System.out.println("Password entered: " + password);
        String name = request.getParameter("name");
        System.out.println("Name entered: " + name);
        String gender = request.getParameter("gender");
        System.out.println("Gender selected: " + gender);
        Date dateOfBirth = null;
        try {
            dateOfBirth = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("date_of_birth"));
            System.out.println("Date of Birth entered: " + dateOfBirth);
        } catch (ParseException ex) {
            System.out.println("Date of Birth parsing failed: " + ex.getMessage());
        }
        String role = request.getParameter("role");
        System.out.println("Role selected: " + role);

        // Handle profile image upload
        Part filePart = request.getPart("profile_image");
        String fileName = filePart.getSubmittedFileName();
        String profileImagePath = "E:\\Study Document\\EXE201\\Mind_Bridge\\web\\images\\user\\" + fileName;
        filePart.write(profileImagePath); // Save the uploaded image
        System.out.println("Profile image uploaded: " + profileImagePath);

        // Create User object
        User user = new User();
        user.setEmail(email);
        user.setPassword(password); // Consider hashing the password before storing it
        user.setName(name);
        user.setGender(gender);
        user.setDateOfBirth(dateOfBirth);
        user.setProfileImage(profileImagePath);
        user.setRole(role);

        // Call DAO to register user
        UserDAO userDAO = new UserDAO();
        boolean isRegistered = userDAO.registerUser(user);

        // Redirect based on registration success
        if (isRegistered) {
            response.sendRedirect("login"); // Redirect to success page
        } else {
            request.setAttribute("errorMessage", "Đăng ký không thành công. Vui lòng kiểm tra lại thông tin."); // Set error message
        request.getRequestDispatcher("register.jsp").forward(request, response); // Forward back to registration page
        }
    }
}
