/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Model.Session;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Hello
 */
public class SessionDAO extends DBContext {
    
    public void insertSession(Session session) throws SQLException {
        String query = "INSERT INTO [Session] (user_id, therapist_id, session_date, session_time, session_notes, feedback) VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement ps = connection.prepareStatement(query)) {
            ps.setInt(1, session.getUserId());
            ps.setInt(2, session.getTherapistId());
            ps.setDate(3, new java.sql.Date(session.getSessionDate().getTime()));
            ps.setTime(4, session.getSessionTime());
            ps.setString(5, session.getSessionNotes());
            ps.setString(6, session.getFeedback());
            ps.executeUpdate();
        }
    }
}
