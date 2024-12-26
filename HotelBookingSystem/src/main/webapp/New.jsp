<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking and Payment Details</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h2>Booking Details for Registered Users</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Adults</th>
            <th>Children</th>
            <th>Rooms</th>
            <th>Check-in Date</th>
            <th>Check-out Date</th>
        </tr>
        <%
            String jdbcURL = "jdbc:mysql://localhost:3306/gmg";
            String dbUser = "root";
            String dbPassword = "MANISH#27";
            
            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
                
                String sql1 = "SELECT id, adults, children, rooms, checkin, checkout FROM bookings1";
                
                statement = connection.createStatement();
                resultSet = statement.executeQuery(sql1);

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
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                try {
                    if (resultSet != null) resultSet.close();
                    if (statement != null) statement.close();
                    if (connection != null) connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        %>
    </table>

    <h2>All Booking Details</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Guest Name</th>
            <th>Gender</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Adhar ID</th>
            <th>Room Type</th>
        </tr>
        <%
            try {
                connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
                
                String sql2 = "SELECT id, guestname, gender, email, phonenumber, adharid, roomtype FROM bookings";
                
                statement = connection.createStatement();
                resultSet = statement.executeQuery(sql2);

                while (resultSet.next()) {
                    int id2 = resultSet.getInt("id");
                    String guestname = resultSet.getString("guestname");
                    String gender = resultSet.getString("gender");
                    String email = resultSet.getString("email");
                    String phonenumber = resultSet.getString("phonenumber");
                    String adharid = resultSet.getString("adharid");
                    String roomtype = resultSet.getString("roomtype");
        %>
        <tr>
            <td><%= id2 %></td>
            <td><%= guestname %></td>
            <td><%= gender %></td>
            <td><%= email %></td>
            <td><%= phonenumber %></td>
            <td><%= adharid %></td>
            <td><%= roomtype %></td>
        </tr>
        <%
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                try {
                    if (resultSet != null) resultSet.close();
                    if (statement != null) statement.close();
                    if (connection != null) connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        %>
    </table>

    <h2>Payment Details for Registered Users</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Card Number</th>
            <th>Expiry Date</th>
            <th>CVV</th>
            <th>Amount</th>
        </tr>
        <%
            try {
                connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
                
                String sql3 = "SELECT id, card_number, expiry_date, cvv, amount FROM payment_details";
                
                statement = connection.createStatement();
                resultSet = statement.executeQuery(sql3);

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
                    if (statement != null) statement.close();
                    if (connection != null) connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        %>
    </table>
</body>
</html>
