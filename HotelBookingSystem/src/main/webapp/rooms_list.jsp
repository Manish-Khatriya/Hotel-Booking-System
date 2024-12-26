<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Room List</title>
    <meta charset="ISO-8859-1">
    <!-- Linking external CSS for common styles -->
    <link href="css/style.css" type="text/css" rel="stylesheet">
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('/images/list.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #333;
        }

        /* Overlay to make text readable over the background */
        .content {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            margin: 40px auto;
            width: 80%;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
            border-radius: 10px;
        }

        h2 {
            text-align: center;
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }

        /* Table Styles */
        table {
            width: 100%;
            margin: auto;
            border-collapse: collapse;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        caption {
            margin-bottom: 15px;
            font-size: 20px;
            letter-spacing: 2px;
            color: red;
            text-decoration: underline;
            font-weight: bold;
        }

        /* Button Styles */
        .btn {
            padding: 8px 30px;
            margin: 2px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
        }
        .update-btn {
            background-color: #007bff;
            color: white;
        }
        .delete-btn {
            background-color: #dc3545;
            color: white;
        }
        .add-room-btn {
            background-color: #28a745;
            color: white;
            display: inline-block;
            width: auto;
            text-align: center;
            margin-top: 20px;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            table, th, td {
                display: block;
                width: 100%;
            }
            th {
                display: none;
            }
            td {
                display: block;
                text-align: right;
                padding: 10px;
                position: relative;
            }
            td::before {
                content: attr(data-label);
                position: absolute;
                left: 10px;
                font-weight: bold;
                text-align: left;
            }
            .btn {
                display: block;
                width: 100%;
                margin: 5px 0;
                text-align: center;
            }
            .add-room-btn {
                width: 100%;
                margin-top: 10px;
            }
        }
    </style>
</head>
<body>
    <div class="content">
        <h2>Room List</h2>
        
        <table>
            <tr>
                <th>Id</th>
                <th>Room Type</th>
                <th>Total Rooms</th>
                <th>Price per Night</th>
                <th>Actions</th>
            </tr>
            <%
                String jdbcURL = "jdbc:mysql://localhost:3306/gmg";
                String jdbcUser = "root";
                String jdbcPassword = "MANISH#27";
                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection(jdbcURL, jdbcUser, jdbcPassword);
                    stmt = conn.createStatement();
                    String query = "SELECT id, room_type, total_rooms, price_per_night FROM rooms";
                    rs = stmt.executeQuery(query);

                    while (rs.next()) {
                        int id = rs.getInt("id");
                        String roomType = rs.getString("room_type");
                        int totalRooms = rs.getInt("total_rooms");
                        double price = rs.getDouble("price_per_night");

                        out.println("<tr>");
                        out.println("<td data-label='Id'>" + id + "</td>");
                        out.println("<td data-label='Room Type'>" + roomType + "</td>");
                        out.println("<td data-label='Total Rooms'>" + totalRooms + "</td>");
                        out.println("<td data-label='Price per Night'>" + price + "</td>");
                        out.println("<td>");
                        out.println("<a href='UpdateRoomServlet?id=" + id + "' class='btn update-btn'>Update</a>");
                        out.println("<a href='DeleteRoomServlet?id=" + id + "' class='btn delete-btn' onclick='return confirm(\"Are you sure?\");'>Delete</a>");
                        out.println("</td>");
                        out.println("</tr>");
                    }
                } catch (ClassNotFoundException | SQLException e) {
                    e.printStackTrace();
                    out.println("<tr><td colspan='5'>Error: " + e.getMessage() + "</td></tr>");
                } finally {
                    if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
                }
            %>
            <!-- Add Room Button Row -->
            <tr>
                <td colspan="5" style="text-align: center;">
                    <form action="room_add.jsp" method="get" style="display: inline;">
                       <a href="room_add.jsp"><input type="submit" value="Add Room" class="btn add-room-btn"></a> 
                    </form>
                    <form action="hotel.jsp" method="get" style="display: inline;">
                        <a href="hotel.jsp"><input type="submit" value="Go Home" class="btn add-room-btn"></a> 
                    </form>
                    <form action="updateImage.jsp"method="get" style="display: inline;">
                     <a href="updateImage.jsp" ><input type="submit" value="Add Room Image" class="btn add-room-btn"> </a>  
                    </form> 
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
