/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Model.User;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
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
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
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
                    user.setPhone(rs.getString("phone"));
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
                user.setPhone(rs.getString("phone"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    public List<User> getAllUsers() {
        List<User> userList = new ArrayList<>();
        try {
            String query = "SELECT user_id, name, role, point, email FROM [User]";
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                User user = new User();
                user.setUserId(rs.getInt("user_id"));
                user.setName(rs.getString("name"));
                user.setRole(rs.getString("role"));
                user.setPoint(rs.getString("point"));
                user.setEmail(rs.getString("email"));
                userList.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return userList;
    }

    public boolean registerUser(User user) {
        String sql = "INSERT INTO [User] (email, password, name, gender, date_of_birth, profile_image, role, phone) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user.getEmail());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getName());
            ps.setString(4, user.getGender());
            ps.setDate(5, new java.sql.Date(user.getDateOfBirth().getTime())); // Correct date mapping
            ps.setString(6, user.getProfileImage());
            ps.setString(7, user.getRole());
            ps.setString(8, user.getPhone());
            return ps.executeUpdate() > 0; // Returns true if at least one record is inserted
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public User getUserById(int userId) {
        User user = null;
        try {
            String query = "SELECT * FROM [User] WHERE user_id = ?";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                user = new User();
                user.setUserId(rs.getInt("user_id"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setName(rs.getString("name"));
                user.setDateOfBirth(rs.getDate("date_of_birth"));
                user.setGender(rs.getString("gender"));
                user.setProfileImage(rs.getString("profile_image"));
                user.setRole(rs.getString("role"));
                user.setPhone(rs.getString("phone"));
                user.setPoint(rs.getString("point"));
                user.setLevel(rs.getString("level"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    public void updateUserPoint(int userId, String point) {
        try {
            String query = "UPDATE [User] SET point = ? WHERE user_id = ?";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, point);
            ps.setInt(2, userId);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        UserDAO userDAO = new UserDAO();
        // Gọi phương thức getAllUsers
        User user = userDAO.getUserById(1);

        // In danh sách người dùng
        System.out.println("Danh sách người dùng:");
        System.out.println("ID: " + user.getUserId()
                + ", Email: " + user.getEmail()
                + ", Password: " + user.getPassword()
                + ", Name: " + user.getName()
                + ", Gender: " + user.getGender()
                + ", DOB: " + user.getDateOfBirth()
                + ", Profile Image: " + user.getProfileImage()
                + ", Role: " + user.getRole()
                + ", Phone: " + user.getPhone()
                + ", Point: " + user.getPoint()
                + ", Level: " + user.getLevel());
    }

}
