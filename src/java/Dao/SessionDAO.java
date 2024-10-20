/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Model.Session;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hello
 */
public class SessionDAO extends DBContext {

    public void insertSession(Session session) throws SQLException {
        String query = "INSERT INTO [Session] (user_id, therapist_id, session_date, session_time, session_notes, feedback) VALUES (?, ?, ?, ?, ?, ?)";
        try ( PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, session.getUserId());
            ps.setInt(2, session.getTherapistId());
            ps.setDate(3, new java.sql.Date(session.getSessionDate().getTime()));
            ps.setTime(4, session.getSessionTime());
            ps.setString(5, session.getSessionNotes());
            ps.setString(6, session.getFeedback());
            ps.executeUpdate();
        }
    }

    // Retrieve all sessions
    public List<Session> getAllSessions() {
        String query = "SELECT * FROM [Session]";
        List<Session> sessions = new ArrayList<>();

        try ( PreparedStatement stmt = connection.prepareStatement(query);  ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                // Create a new session object
                Session session = new Session();
                session.setSessionId(rs.getInt("session_id"));
                session.setUserId(rs.getInt("user_id"));
                session.setTherapistId(rs.getInt("therapist_id"));
                session.setSessionDate(rs.getDate("session_date"));
                session.setSessionTime(rs.getTime("session_time"));
                session.setSessionNotes(rs.getString("session_notes"));
                session.setFeedback(rs.getString("feedback"));

                // Add the session to the list
                sessions.add(session);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return sessions;
    }

    // Method to get sessions for a specific therapist by therapist_id
    public List<Session> getSessionsByTherapistId() {
        List<Session> sessions = new ArrayList<>();
        String sql = "SELECT "
                + "s.session_id, "
                + "u.name AS user_name, "
                + "t_user.name AS therapist_name, " // Lấy tên therapist
                + "s.session_date, "
                + "s.session_time, "
                + "s.session_notes, "
                + "s.feedback "
                + "FROM [Session] s "
                + "JOIN [User] u ON s.user_id = u.user_id "
                + "LEFT JOIN [Therapist] t ON s.therapist_id = t.therapist_id "
                + "LEFT JOIN [User] t_user ON t.user_id = t_user.user_id"; // JOIN để lấy tên therapist


        try (PreparedStatement pstmt = connection.prepareStatement(sql); ResultSet rs = pstmt.executeQuery();) {

            while (rs.next()) {
                Session session = new Session();
                session.setSessionId(rs.getInt("session_id"));
                session.setUserName(rs.getString("user_name"));
                session.setTherapistName(rs.getString("therapist_name"));
                session.setSessionDate(rs.getDate("session_date"));
                session.setSessionTime(rs.getTime("session_time"));
                session.setSessionNotes(rs.getString("session_notes"));
                session.setFeedback(rs.getString("feedback"));

                sessions.add(session);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle the exception appropriately
        }

        return sessions;
    }
}
