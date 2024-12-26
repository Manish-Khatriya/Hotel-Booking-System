package book.hotel.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CheckAvailability")
public class CheckAvailabilityServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Parse parameters
            int adults = Integer.parseInt(request.getParameter("adults"));
            int children = Integer.parseInt(request.getParameter("children"));
            int rooms = Integer.parseInt(request.getParameter("rooms"));
            String checkin = request.getParameter("checkin");
            String checkout = request.getParameter("checkout");

            String roomtype = (String) request.getSession().getAttribute("roomtype");
            System.out.println("Room type from session: " + roomtype);
            if (roomtype == null) {
                throw new ServletException("Room type is not set in session.");
            }


            // Database connection details
            String jdbcURL = "jdbc:mysql://localhost:3306/gmg";
            String dbUser = "root";
            String dbPassword = "MANISH#27";

            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword)) {
                // Insert booking details into the database
                String sql = "INSERT INTO bookings1 (adults, children, rooms, checkin, checkout) VALUES (?, ?, ?, ?, ?)";
                PreparedStatement statement = connection.prepareStatement(sql);
                statement.setInt(1, adults);
                statement.setInt(2, children);
                statement.setInt(3, rooms);
                statement.setDate(4, java.sql.Date.valueOf(checkin));
                statement.setDate(5, java.sql.Date.valueOf(checkout));

                int rowsInserted = statement.executeUpdate();
                if (rowsInserted > 0) {
                    // Forward the request with the parameters to payment_details.jsp
                    request.setAttribute("rooms", rooms);
                    request.setAttribute("checkin", checkin);
                    request.setAttribute("checkout", checkout);
                    request.setAttribute("roomtype", roomtype); // Forward the room type

                    RequestDispatcher dispatcher = request.getRequestDispatcher("payment_details.jsp");
                    dispatcher.forward(request, response);
                } else {
                    response.getWriter().println("No rows inserted.");
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred while processing the booking: " + e.getMessage());
        } catch (NumberFormatException e) {
            response.getWriter().println("Invalid number format: " + e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred: " + e.getMessage());
        }
    }
}
