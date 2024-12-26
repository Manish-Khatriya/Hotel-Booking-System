<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Check Availability</title>
    <style>
        body {
            background-image: url('./images/design.jpg'); /* Replace with your image path */
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
            font-family: Arial, sans-serif; /* Optional: Set a fallback font */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
            margin: 0; /* Ensure no default margin */
            padding: 0; /* Ensure no default padding */
        }
        .container {
            width: 40%;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 20px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            background-color: rgba(255, 255, 255, 0.8); /* Optional: Add a semi-transparent white background */
            text-align: center; /* Center align content */
        }
        .container h2 {
            font-size: 35px; /* Adjust the font size as needed */
            margin-bottom: 20px; /* Add margin for spacing */
        }
        .form-group {
            margin-bottom: 5px;
            text-align: left; /* Left align labels */
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input, select {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        button {
            padding: 12px 29px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
        }
    </style>
    <script>
        function updateRooms() {
            var adults = parseInt(document.getElementById("adults").value);
            var children = parseInt(document.getElementById("children").value);
            var rooms = parseInt(document.getElementById("rooms").value);

            if (isNaN(adults)) adults = 0;
            if (isNaN(children)) children = 0;

            // Specific condition: if adults are 1 and children are 1, no rooms available
            if (adults === 1 && children === 1) {
                rooms = 0;
            } else {
                rooms = Math.max(Math.ceil(adults / 2), Math.ceil(children / 2));
            }
            
            document.getElementById("rooms").value = rooms;
        }

        function setMinDates() {
            var today = new Date().toISOString().split('T')[0];
            document.getElementById("checkin").setAttribute('min', today);
            document.getElementById("checkout").setAttribute('min', today);
        }
        
        window.onload = function() {
            setMinDates();
        }
    </script>
</head>
<body>
    <div class="container">
        <h2>Check Availability</h2>
        <form action="CheckAvailability" method="post">
            <div class="form-group">
                <label for="adults">Number of Adults:</label>
                <input type="number" id="adults" name="adults" required oninput="updateRooms()">
            </div>
            <div class="form-group">
                <label for="children">Number of Children:</label>
                <input type="number" id="children" name="children" oninput="updateRooms()">
            </div>
            <div class="form-group">
                <label for="rooms">Number of Rooms:</label>
                <input type="number" id="rooms" name="rooms" required readonly>
            </div>
            <div class="form-group">
                <label for="checkin">Check-in Date:</label>
                <input type="date" id="checkin" name="checkin" required>
            </div>
            <div class="form-group">
                <label for="checkout">Check-out Date:</label>
                <input type="date" id="checkout" name="checkout" required>
            </div>
            <a href="payment_details.jsp">
            <button type="submit" class="btn btn-primary">Submit and Payment</button></a>
        </form>
    </div>
</body>
</html>
