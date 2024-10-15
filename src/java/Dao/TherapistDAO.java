/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Model.Therapist;
import Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

// TherapistDAO class
public class TherapistDAO extends DBContext {

    // Lấy tất cả các therapist (Read)
    public List<Therapist> getAllTherapists() {
        String query = "SELECT t.*, u.* FROM Therapist t JOIN [User] u ON t.user_id = u.user_id";
        List<Therapist> therapists = new ArrayList<>();

        try (
                PreparedStatement stmt = connection.prepareStatement(query); ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                // Tạo đối tượng Therapist
                Therapist therapist = new Therapist();
                therapist.setTherapistId(rs.getInt("therapist_id"));
                therapist.setUserId(rs.getInt("user_id"));
                therapist.setSpecialization(rs.getString("specialization"));
                therapist.setAvailableTime(rs.getString("available_time"));
                therapist.setCertification(rs.getString("certification"));
                therapist.setRating(rs.getDouble("rating"));

                // Tạo đối tượng User và gán vào Therapist
                User user = new User();
                user.setUserId(rs.getInt("user_id"));
                user.setEmail(rs.getString("email"));
                user.setName(rs.getString("name"));
                user.setGender(rs.getString("gender"));
                user.setDateOfBirth(rs.getDate("date_of_birth"));
                user.setProfileImage(rs.getString("profile_image"));
                user.setRole(rs.getString("role"));
                user.setPhone(rs.getString("phone"));
                user.setPoint(rs.getString("point"));
                user.setLevel(rs.getString("level"));

                therapist.setUser(user);

                // Thêm therapist vào danh sách
                therapists.add(therapist);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return therapists;
    }

    // Cập nhật thông tin therapist (Update)
    public void updateTherapist(Therapist therapist) {
        String query = "UPDATE Therapist SET specialization = ?, available_time = ?, certification = ?, rating = ? WHERE therapist_id = ?";

        try (
                PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, therapist.getSpecialization());
            stmt.setString(2, therapist.getAvailableTime());
            stmt.setString(3, therapist.getCertification());
            stmt.setDouble(4, therapist.getRating());
            stmt.setInt(5, therapist.getTherapistId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Therapist getTherapistById(int therapistId) {
        String query = "SELECT t.*, u.* FROM Therapist t "
                + "JOIN [User] u ON t.user_id = u.user_id WHERE t.therapist_id = ?";
        Therapist therapist = null;

        try (
                PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, therapistId);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                therapist = new Therapist();
                therapist.setTherapistId(rs.getInt("therapist_id"));
                therapist.setUserId(rs.getInt("user_id"));
                therapist.setSpecialization(rs.getString("specialization"));
                therapist.setAvailableTime(rs.getString("available_time"));
                therapist.setCertification(rs.getString("certification"));
                therapist.setRating(rs.getDouble("rating"));

                // Lấy thông tin user từ bảng User
                User user = new User();
                user.setUserId(rs.getInt("user_id"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setName(rs.getString("name"));
                user.setGender(rs.getString("gender"));
                user.setDateOfBirth(rs.getDate("date_of_birth"));
                user.setProfileImage(rs.getString("profile_image"));
                user.setRole(rs.getString("role"));
                user.setPhone(rs.getString("phone"));
                user.setPoint(rs.getString("point"));
                user.setLevel(rs.getString("level"));

                // Gán đối tượng user vào therapist
                therapist.setUser(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return therapist;
    }

public static void main(String[] args) {
    TherapistDAO therapistDAO = new TherapistDAO();

    // Gọi phương thức getAllTherapists để lấy danh sách tất cả các therapist
    List<Therapist> therapists = therapistDAO.getAllTherapists();

    // Kiểm tra xem danh sách có rỗng hay không
    if (therapists.isEmpty()) {
        System.out.println("Không tìm thấy therapist nào.");
    } else {
        // Lặp qua danh sách therapist và in thông tin tương ứng
        for (Therapist therapist : therapists) {
            // In thông tin Therapist
            System.out.println("Therapist ID: " + therapist.getTherapistId());
            System.out.println("Specialization: " + therapist.getSpecialization());
            System.out.println("Available Time: " + therapist.getAvailableTime());
            System.out.println("Certification: " + therapist.getCertification());
            System.out.println("Rating: " + therapist.getRating());

            // In thông tin User liên quan
            User user = therapist.getUser();
            if (user != null) {
                System.out.println("User ID: " + user.getUserId());
                System.out.println("Name: " + user.getName());
                System.out.println("Email: " + user.getEmail());
                System.out.println("Role: " + user.getRole());
                System.out.println("Level: " + user.getLevel());
                System.out.println("Point: " + user.getPoint());
            } else {
                System.out.println("Không tìm thấy thông tin User liên quan.");
            }

            System.out.println("============================================");
        }
    }
}
}
