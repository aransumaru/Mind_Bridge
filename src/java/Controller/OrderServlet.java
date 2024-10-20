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
import jakarta.servlet.http.HttpSession;
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

        // Kiểm tra xem người dùng đã đăng nhập chưa
        Integer userId = (Integer) request.getSession().getAttribute("userId");
        if (userId == null) {
            request.setAttribute("error", "Bạn cần đăng nhập trước khi đặt lịch.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        String therapistIdParam = request.getParameter("therapist_id");
        if (therapistIdParam == null) {
            request.setAttribute("error", "Bạn cần chọn một therapist.");
            request.getRequestDispatcher("order.jsp").forward(request, response);
            return;
        }

        int therapistId = Integer.parseInt(therapistIdParam);
        System.out.println("Therapist ID: " + therapistId);

        String sessionDateParam = request.getParameter("session_date");
        if (sessionDateParam == null) {
            request.setAttribute("error", "Ngày phiên không hợp lệ.");
            request.getRequestDispatcher("order.jsp").forward(request, response);
            return;
        }
        Date sessionDate = Date.valueOf(sessionDateParam); // Chuyển đổi thành Date
        System.out.println("Session Date: " + sessionDate);

        String sessionTimeString = request.getParameter("session_time");
        if (sessionTimeString == null) {
            request.setAttribute("error", "Thời gian phiên không hợp lệ.");
            request.getRequestDispatcher("order.jsp").forward(request, response);
            return;
        }

        Time sessionTime = null;

// Thêm ":00" vào cuối chuỗi thời gian
        sessionTimeString += ":00"; // Đảm bảo định dạng là HH:mm:ss

// Validate and convert the session time
        try {
            sessionTime = Time.valueOf(sessionTimeString); // This now includes seconds
        } catch (IllegalArgumentException e) {
            request.setAttribute("error", "Invalid time format. Please use HH:mm.");
            request.getRequestDispatcher("order.jsp").forward(request, response);
            return; // Exit if there's an error
        }

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
