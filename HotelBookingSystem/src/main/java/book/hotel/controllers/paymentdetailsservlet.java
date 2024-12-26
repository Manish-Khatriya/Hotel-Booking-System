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

@WebServlet("/paymentdetailsservlet")
public class paymentdetailsservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // JDBC URL, username, and password of MySQL server
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/gmg";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "MANISH#27";

    // SQL query to insert data into the table
    private static final String SQL_INSERT = "INSERT INTO payment_details (card_number, expiry_date, cvv, amount) VALUES (?, ?, ?, ?)";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get form parameters
        String cardNumber = request.getParameter("cardNumber");
        String expiryDate = request.getParameter("expiryDate");
        String cvv = request.getParameter("cvv");
        String amount = request.getParameter("amount");

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Register JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Open a connection
            conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);

            // Create a prepared statement
            stmt = conn.prepareStatement(SQL_INSERT);
            stmt.setString(1, cardNumber);
            stmt.setString(2, expiryDate);
            stmt.setString(3, cvv);
            stmt.setDouble(4, Double.parseDouble(amount));

            // Execute the statement
            stmt.executeUpdate();

            // Print a success message
            PrintWriter out = response.getWriter();
            response.sendRedirect("successful.jsp");

        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
            throw new ServletException(ex);
        } finally {
            // Clean-up environment
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
