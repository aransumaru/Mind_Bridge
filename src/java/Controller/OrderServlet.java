/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Dao.SessionDAO;
import Dao.TherapistDAO;
import Model.Session;
import Model.Therapist;
import java.io.PrintWriter;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Time;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
@WebServlet(name = "OrderServlet", urlPatterns = {"/order"})
public class OrderServlet extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet OrderServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OrderServlet at " + request.getContextPath() + "</h1>");
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
        // Tạo một đối tượng TherapistDAO để lấy danh sách therapist
        TherapistDAO therapistDAO = new TherapistDAO();
        List<Therapist> therapists = therapistDAO.getAllTherapists();

        // Gửi danh sách therapist đến JSP
        request.setAttribute("therapists", therapists);

        // Chuyển tiếp đến trang JSP chứa form đặt lịch
        request.getRequestDispatcher("order.jsp").forward(request, response);
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
        // Lấy dữ liệu từ form
        // Lấy dữ liệu từ form
        String customerName = request.getParameter("customer_name");
        System.out.println("Customer Name: " + customerName);

        String phone = request.getParameter("phone");
        System.out.println("Phone: " + phone);

        int therapistId = Integer.parseInt(request.getParameter("therapist_id"));
        System.out.println("Therapist ID: " + therapistId);

        Date sessionDate = Date.valueOf(request.getParameter("session_date")); // Chuyển đổi thành Date
        System.out.println("Session Date: " + sessionDate);

        Time sessionTime = Time.valueOf(request.getParameter("session_time")); // Chuyển đổi thành Time
        System.out.println("Session Time: " + sessionTime);

// Giả sử bạn có thông tin user_id từ session đăng nhập
        int userId = (int) request.getSession().getAttribute("user_id"); // Lấy từ session đăng nhập của người dùng
        System.out.println("User ID: " + userId);

// Tạo session object
        Session session = new Session(userId, therapistId, sessionDate, sessionTime, null, null);
        System.out.println("Session Object Created: " + session);

        // Gọi SessionDAO để lưu session vào cơ sở dữ liệu
        SessionDAO sessionDAO = new SessionDAO();
        try {
            sessionDAO.insertSession(session);
            // Nếu thêm thành công, chuyển hướng tới trang xác nhận
            response.sendRedirect("index.jsp");
        } catch (SQLException e) {
            // Nếu có lỗi, gửi thông báo lỗi
            request.setAttribute("error", "Đã có lỗi xảy ra khi đặt lịch.");
            request.getRequestDispatcher("order.jsp").forward(request, response);
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
