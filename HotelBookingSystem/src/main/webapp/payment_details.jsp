<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment Details</title>
    <style>
        /* Your existing CSS for the page */
        body {
            background-image: url('./images/cr.jpg');
            background-size: cover;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            width: 400px;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            color: #333333;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #666666;
        }

        input[type="text"], input[type="number"] {
            width: calc(100% - 20px);
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 3px;
            box-sizing: border-box;
            font-size: 14px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Enter Payment Details</h2>

        <%
            // Retrieve session attributes passed from CheckAvailabilityServlet
            int rooms = (Integer) request.getAttribute("rooms");
            String checkinStr = (String) request.getAttribute("checkin");
            String checkoutStr = (String) request.getAttribute("checkout");
            String roomType = (String) request.getAttribute("roomtype");

            // Calculate total amount based on room type and days
            java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd");
            java.util.Date checkinDate = sdf.parse(checkinStr);
            java.util.Date checkoutDate = sdf.parse(checkoutStr);
            long diffInMillies = Math.abs(checkoutDate.getTime() - checkinDate.getTime());
            long diffDays = diffInMillies / (1000 * 60 * 60 * 24);

            double roomPrice = 0.0;
            if ("basic room".equals(roomType)) {
                roomPrice = 1500.0;
            } else if ("deluxe room".equals(roomType)) {
                roomPrice = 2500.0;
            } else if ("premium room".equals(roomType)) {
                roomPrice = 3500.0;
            }

            double totalAmount = roomPrice * rooms * diffDays;

            // Display total amount for payment
        %>

        <form action="paymentdetailsservlet" method="post">
            <div class="form-group">
                <label for="cardNumber">Card Number:</label>
                <input type="text" id="cardNumber" name="cardNumber" required>
            </div>
            <div class="form-group">
                <label for="expiryDate">Expiry Date:</label>
                <input type="text" id="expiryDate" name="expiryDate" placeholder="MM/YYYY" required>
            </div>
            <div class="form-group">
                <label for="cvv">CVV:</label>
                <input type="number" id="cvv" name="cvv" required>
            </div>
            <div class="form-group">
                <label for="amount">Amount to Pay:</label>
                <input type="text" id="amount" name="amount" value="<%= totalAmount %>" readonly>
            </div>
            <input type="submit" value="Submit Payment">
        </form>
    </div>
</body>
</html>
