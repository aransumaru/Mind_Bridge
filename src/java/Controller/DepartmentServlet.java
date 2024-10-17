/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Dao.UserDAO;
import Model.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author Admin
 */
@WebServlet(name = "DepartmentServlet", urlPatterns = {"/department"})
public class DepartmentServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DepartmentServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DepartmentServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Integer userId = (Integer) session.getAttribute("userId"); // Lấy userId từ session

        if (userId == null) {
            response.sendRedirect("login");
            return;
        }

        // Gọi UserDAO để lấy thông tin người dùng
        UserDAO userDAO = new UserDAO();
        User user = userDAO.getUserById(userId);
        int currentPoints = Integer.parseInt(user.getPoint());

        String packageType = request.getParameter("package");
        int requiredPoints = 0;
        int level = 0;

        switch (packageType) {
            case "basic":
                requiredPoints = 49000;
                level = 2;
                break;
            case "premium":
                requiredPoints = 99000;
                level = 3;
                break;
            case "elite":
                requiredPoints = 199000;
                level = 4;
                break;
            default:
                response.sendRedirect("errorPage.jsp");
                return;
        }
    // In ra giá trị level và requiredPoints để debug
    System.out.println("Package Type: " + packageType);
    System.out.println("Current Points: " + currentPoints);
    System.out.println("Required Points: " + requiredPoints);
    System.out.println("Selected Level: " + level);
    System.out.println("User ID: " + userId);
        if (currentPoints < requiredPoints) {
            request.getRequestDispatcher("payment.jsp").forward(request, response);
        } else {
            // Cập nhật level người dùng và điểm
            // Gọi phương thức để cập nhật database
            userDAO.updateUserLevelAndPoints(level, requiredPoints, userId);
            request.getRequestDispatcher("user_profile.jsp").forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
