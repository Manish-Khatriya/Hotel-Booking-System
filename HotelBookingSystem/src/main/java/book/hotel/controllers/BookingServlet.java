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

@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String guestname = request.getParameter("guestname");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String phonenumber = request.getParameter("phonenumber");
        String adharid = request.getParameter("adharid");
        String roomtype = request.getParameter("roomtype");
        
        // Set room type in session
        request.getSession().setAttribute("roomtype", roomtype); // Add this line

        String jdbcURL = "jdbc:mysql://localhost:3306/gmg";
        String dbUser = "root";
        String dbPassword = "MANISH#27";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            String sql = "INSERT INTO bookings (guestname, gender, email, phonenumber, adharid, roomtype) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, guestname);
            statement.setString(2, gender);
            statement.setString(3, email);
            statement.setString(4, phonenumber);
            statement.setString(5, adharid);
            statement.setString(6, roomtype);

            int rows = statement.executeUpdate();

            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            if (rows > 0) {
                response.sendRedirect("check.jsp");
            } else {
                out.println("<h1>Booking failed!</h1>");
            }

            statement.close();
            connection.close();
        } catch (ClassNotFoundException | SQLException e) {
            throw new ServletException(e);
        }
    }
}
