<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap" rel="stylesheet">
    <title>Booking Confirmation</title>
    <!-- External CSS for better organization and maintainability -->
    <style>
        body {
            background-image: url("./images/succes.jpg");
            font-family: 'Arial', sans-serif;
            color: #ffffff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
             background-position: center
        }
        .container {
             background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.5);
        }
        h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
            color: green;
        }
        p {
            font-size: 1.2rem;
            margin-bottom: 30px;
            color: #333;
        }
        .button {
            padding: 15px 25px;
            font-size: 1rem;
            color: #fff;
            background: #28a745;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s ease;
            text-decoration: none;
        }
        .button:hover {
            background: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Payment Successful!</h1>
        <p>Congratulations! Your booking has been successfully completed. Thank you for choosing our services.</p>
        <p>We look forward to welcoming you soon.</p>
        <a href="hotel.jsp" class="button"><i class="fas fa-chevron-left"></i>Return to Home </a>
    </div>
</body>
</html>
