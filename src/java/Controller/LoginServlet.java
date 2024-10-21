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
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Hello
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Log to check if form data is being received
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        System.out.println("Login attempt with email: " + email);  // Ensure this prints email correctly
        System.out.println("Password entered: " + password);

        // Call the DAO for user authentication
        UserDAO userDAO = new UserDAO();
        User user = userDAO.login(email, password);  // Implement the login method in your DAO

        if (user != null) {
            // User authenticated, proceed with login
            HttpSession session = request.getSession(true);
            session.setAttribute("user", user);
            session.setAttribute("userId", user.getUserId());
            session.setAttribute("role", user.getRole());
            session.setAttribute("level", user.getLevel());
            if ("Khách hàng".equals(user.getRole())) {
                response.sendRedirect("index.jsp");  // Redirect to index for customers
            } else if ("Nhà điều trị tâm lý".equals(user.getRole())) {
                // Use getTherapistID() to redirect to therapist page
                response.sendRedirect("therapist");
            }
        } else {
            // Failed login attempt
            request.setAttribute("errorMessage", "Sai email hoặc mật khẩu. Vui lòng thử lại.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

}

