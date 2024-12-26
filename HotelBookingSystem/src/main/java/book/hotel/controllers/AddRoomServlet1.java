package book.hotel.controllers;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddRoomServlet1")
public class AddRoomServlet1 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // JDBC URL, username, and password of MySQL server
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/gmg";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "MANISH#27";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form parameters
        String roomType = request.getParameter("roomType");
        int totalRooms = Integer.parseInt(request.getParameter("totalRooms"));
        double price = Double.parseDouble(request.getParameter("price"));

        // Database connection objects
        Connection conn = null;
        PreparedStatement stmt = null;
        PrintWriter out = response.getWriter();

        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to MySQL database
            conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);

            // SQL query to insert room details
            String sql = "INSERT INTO rooms (room_type, total_rooms, price_per_night) VALUES (?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, roomType);
            stmt.setInt(2, totalRooms);
            stmt.setDouble(3, price);

            // Execute the query
            int rowsInserted = stmt.executeUpdate();
            if (rowsInserted > 0) {
            	response.sendRedirect("rooms_list.jsp");
            } else {
                out.println("<h2>Failed to add room.</h2>");
            }
        } catch (ClassNotFoundException | SQLException ex) {
            ex.printStackTrace();
            out.println("<h2>Error: " + ex.getMessage() + "</h2>");
        } finally {
            // Clean up resources
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
}
