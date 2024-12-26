<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <title>Add Room</title>
    <style>
        /* Setup for the container holding both the background and form */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f4f4f4; /* Fallback background color */
        }

        /* Main container for background image and content */
        .background-container {
            position: relative;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }

        /* Background image setup */
        .background-container::before {
            content: "";
            background-image: url("./images/addroom.jpg");
            background-size: cover;
            background-position: center;
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1; /* Put it behind the content */
            opacity: 1; /* Optional: Add opacity for a better overlay effect */
        }

        /* Form container styles */
        .form-container {
            width: 400px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9); /* Slightly transparent background */
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            z-index: 1; /* Ensure it stays above the background */
            text-align: center; /* Center text in form */
        }

        .form-container h2 {
            margin-bottom: 20px;
        }

        .form-container label {
            display: block;
            margin-bottom: 5px;
            text-align: left;
        }

        .form-container input,
        .form-container select {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-container button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .form-container button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="background-container">
        <div class="form-container">
            <h2>Add Room</h2>
            <form action="AddRoomServlet1" method="post">
                <label for="roomType">Room Type</label>
                <select id="roomType" name="roomType">
                    <option value="basic">Basic Room</option>
                    <option value="deluxe">Deluxe Room</option>
                    <option value="premium">Premium Room</option>
                </select>
                <label for="totalRooms">Total Rooms</label>
                <input type="number" id="totalRooms" name="totalRooms" required>
                <label for="price">Price Of Room(Rs)</label>
                <input type="number" step="0.01" id="price" name="price" required>
                <button type="submit">Submit</button>
            </form>
        </div>
    </div>
    
</body>
</html>
