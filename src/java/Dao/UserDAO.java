/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/**
 *
 * @author Admin
 */
public class UserDAO extends DBContext {

    public User checkLogin(String email, String password) throws SQLException {
        String sql = "SELECT * FROM User WHERE email = '?'";
        try ( PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                String dbPassword = rs.getString("password");
                if (dbPassword.equals(password)) {
                    User user = new User();
                    user.setUserId(rs.getInt("user_id"));
                    user.setEmail(email);
                    user.setPassword(dbPassword); // Lưu mật khẩu đã mã hóa
                    user.setName(rs.getString("name"));
                    user.setGender(rs.getString("gender"));
                    user.setDateOfBirth(rs.getDate("date_of_birth"));
                    user.setProfileImage(rs.getString("profile_image"));
                    user.setRole(rs.getString("role"));
                    return user;
                }
            }
        }
        return null;
    }
    
    public User login(String email, String password) {
        User user = null;
        String sql = "SELECT * FROM [User] WHERE email = ? AND password = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setUserId(rs.getInt("user_id"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setName(rs.getString("name"));
                user.setGender(rs.getString("gender"));
                user.setDateOfBirth(rs.getDate("date_of_birth"));
                user.setProfileImage(rs.getString("profile_image"));
                user.setRole(rs.getString("role"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    public List<User> getAllUsers() throws SQLException {
        List<User> users = new ArrayList<>();
        String sql = "SELECT * FROM [User]";
        try ( PreparedStatement ps = connection.prepareStatement(sql);  ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                User user = new User();
                user.setUserId(rs.getInt("user_id"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setName(rs.getString("name"));
                user.setGender(rs.getString("gender"));
                user.setDateOfBirth(rs.getDate("date_of_birth"));
                user.setProfileImage(rs.getString("profile_image"));
                user.setRole(rs.getString("role"));
                users.add(user);
            }
        }
        return users;
    }

    public boolean registerUser(User user) {
        String sql = "INSERT INTO [User] (email, password, name, gender, date_of_birth, profile_image, role) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user.getEmail());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getName());
            ps.setString(4, user.getGender());
            ps.setDate(5, new java.sql.Date(user.getDateOfBirth().getTime())); // Correct date mapping
            ps.setString(6, user.getProfileImage());
            ps.setString(7, user.getRole());
            return ps.executeUpdate() > 0; // Returns true if at least one record is inserted
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void main(String[] args) {
        UserDAO userDAO = new UserDAO();

        try {
            // Gọi phương thức getAllUsers
            List<User> users = userDAO.getAllUsers();

            // In danh sách người dùng
            System.out.println("Danh sách người dùng:");
            for (User user : users) {
                System.out.println("ID: " + user.getUserId() + ", Email: " + user.getEmail() + ", Tên: " + user.getName() + ", Vai trò: " + user.getRole());
            }
        } catch (SQLException e) {
            System.out.println("Lỗi khi kết nối cơ sở dữ liệu: " + e.getMessage());
        }
    }

}
