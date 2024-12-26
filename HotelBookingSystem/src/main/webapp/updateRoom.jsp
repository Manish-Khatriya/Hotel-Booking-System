<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Room</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: url('./images/up.jpg') no-repeat center center fixed;
            background-size: cover;
        }

        /* Container Styles */
        .container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 350px;
            text-align: center;
        }

        /* Form Elements Styles */
        input[type="text"], input[type="number"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            width: calc(100% - 20px);
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        /* Form Labels */
        label {
            display: block;
            margin-top: 10px;
            text-align: left;
            font-weight: bold;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .container {
                width: 90%;
                padding: 20px;
            }

            input[type="text"], input[type="number"], input[type="submit"] {
                width: calc(100% - 10px);
                margin: 5px 0;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Update Room</h2>
        <form action="SaveUpdatedRoomServlet" method="post">
            <input type="hidden" name="id" value="<%= request.getAttribute("id") %>">
            
            <label for="roomType">Room Type:</label>
            <input type="text" id="roomType" name="roomType" value="<%= request.getAttribute("roomType") %>" required><br>
            
            <label for="totalRooms">Total Rooms:</label>
            <input type="number" id="totalRooms" name="totalRooms" value="<%= request.getAttribute("totalRooms") %>" required><br>
            
            <label for="price">Price per Night:</label>
            <input type="number" step="0.01" id="price" name="price" value="<%= request.getAttribute("price") %>" required><br>
            
            <input type="submit" value="Update Room">
        </form>
    </div>
</body>
</html>
