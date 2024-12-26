<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking and Payment Details</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f0f2f5;
        }
        h2 {
            color: #333;
            text-align: center;
            margin-top: 20px;
        }
        .table-container {
            width: 100%;
            overflow-x: auto;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #007bff;
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
    <%
        HttpSession session2 = request.getSession(false);
        if (session2 == null || session2.getAttribute("phonenumber") == null || session2.getAttribute("adharid") == null) {
            response.sendRedirect("Guest_details.jsp"); // Redirect to login page if not logged in
            return;
        }

        String loggedInPhoneNumber = (String) session2.getAttribute("phonenumber");
        String loggedInAdharId = (String) session2.getAttribute("adharid");

        String jdbcURL = "jdbc:mysql://localhost:3306/gmg";
        String dbUser = "root";
        String dbPassword = "MANISH#27";

        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            // Query to get id based on phone number and Aadhaar ID
            String getIdSql = "SELECT id FROM bookings WHERE phonenumber = ? AND adharid = ?";
            preparedStatement = connection.prepareStatement(getIdSql);
            preparedStatement.setString(1, loggedInPhoneNumber);
            preparedStatement.setString(2, loggedInAdharId);
            resultSet = preparedStatement.executeQuery();

            int loggedInId = 0;
            if (resultSet.next()) {
                loggedInId = resultSet.getInt("id");
            } else {
                // If no id found, redirect to login page
                response.sendRedirect("Guest_details.jsp");
                return;
            }

            // Query to fetch other booking details using id
            String sql2 = "SELECT id, guestname, gender, email, phonenumber, adharid, roomtype FROM bookings WHERE id = ?";
            preparedStatement = connection.prepareStatement(sql2);
            preparedStatement.setInt(1, loggedInId);
            resultSet = preparedStatement.executeQuery();
    %>

    <h2>All Booking Details</h2>
    <div class="table-container">
        <table>
            <tr>
                <th>ID</th>
                <th>Guest Name</th>
                <th>Gender</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Aadhaar ID</th>
                <th>Room Type</th>
            </tr>
            <%
                while (resultSet.next()) {
                    int id2 = resultSet.getInt("id");
                    String guestname = resultSet.getString("guestname");
                    String gender = resultSet.getString("gender");
                    String email = resultSet.getString("email");
                    String phonenumber = resultSet.getString("phonenumber");
                    String adharidResult = resultSet.getString("adharid");
                    String roomtype = resultSet.getString("roomtype");
            %>
            <tr>
                <td><%= id2 %></td>
                <td><%= guestname %></td>
                <td><%= gender %></td>
                <td><%= email %></td>
                <td><%= phonenumber %></td>
                <td><%= adharidResult %></td>
                <td><%= roomtype %></td>
            </tr>
            <%
                }
                resultSet.close();

                // Query to fetch booking details using id
                String sql1 = "SELECT id, adults, children, rooms, checkin, checkout FROM bookings1 WHERE id = ?";
                preparedStatement = connection.prepareStatement(sql1);
                preparedStatement.setInt(1, loggedInId);
                resultSet = preparedStatement.executeQuery();
            %>
        </table>
    </div>
    
    <h2>Booking Details for Registered Users</h2>
    <div class="table-container">
        <table>
            <tr>
                <th>ID</th>
                <th>Adults</th>
                <th>Children</th>
                <th>Rooms</th>
                <th>Check-in Date</th>
                <th>Check-out Date</th>
            </tr>
            <%
                while (resultSet.next()) {
                    int id1 = resultSet.getInt("id");
                    int adults = resultSet.getInt("adults");
                    int children = resultSet.getInt("children");
                    int rooms = resultSet.getInt("rooms");
                    Date checkin = resultSet.getDate("checkin");
                    Date checkout = resultSet.getDate("checkout");
            %>
            <tr>
                <td><%= id1 %></td>
                <td><%= adults %></td>
                <td><%= children %></td>
                <td><%= rooms %></td>
                <td><%= checkin %></td>
                <td><%= checkout %></td>
            </tr>
            <%
                }
                resultSet.close();

                // Query to fetch payment details using id
                String sql3 = "SELECT id, card_number, expiry_date, cvv, amount FROM payment_details WHERE id = ?";
                preparedStatement = connection.prepareStatement(sql3);
                preparedStatement.setInt(1, loggedInId);
                resultSet = preparedStatement.executeQuery();
            %>
        </table>
    </div>

    <h2>Payment Details for Registered Users</h2>
    <div class="table-container">
        <table>
            <tr>
                <th>ID</th>
                <th>Card Number</th>
                <th>Expiry Date</th>
                <th>CVV</th>
                <th>Amount</th>
            </tr>
            <%
                while (resultSet.next()) {
                    int id3 = resultSet.getInt("id");
                    String cardNumber = resultSet.getString("card_number");
                    String expiryDate = resultSet.getString("expiry_date");
                    String cvv = resultSet.getString("cvv");
                    double amount = resultSet.getDouble("amount");
            %>
            <tr>
                <td><%= id3 %></td>
                <td><%= cardNumber %></td>
                <td><%= expiryDate %></td>
                <td><%= cvv %></td>
                <td><%= amount %></td>
            </tr>
            <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                try {
                    if (resultSet != null) resultSet.close();
                    if (preparedStatement != null) preparedStatement.close();
                    if (connection != null) connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            %>
        </table>
    </div>
</body>
</html>
