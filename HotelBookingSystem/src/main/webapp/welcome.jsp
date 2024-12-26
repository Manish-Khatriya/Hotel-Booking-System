<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to GMG Hotel</title>
    <style>
        /* Use a cleaner, more modern font */
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap');
        
        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            background-image: url("./images/welcome .jpg"); /* Adjusted image path */
            background-size: cover; /* Ensure the image covers the whole background */
            background-position: center; /* Center the background image */
            background-repeat: no-repeat; /* Prevent the image from repeating */
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            position: relative;
            overflow: hidden;
            color: #ffffff; /* White text color */
        }

        /* Overlay for readability */
        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0); /* Semi-transparent overlay */
            z-index: 1;
        }

        .container {
            position: relative;
            z-index: 2;
            max-width: 600px;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.5);
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.5); /* Enhanced shadow for depth */
            border-radius: 12px; /* Rounded corners */
        }

        h1 {
            font-size: 2.5em;
            margin-bottom: 20px;
            color: green; /* Golden yellow text color */
        }

        p {
            font-size: 1.2em;
            margin-bottom: 30px;
            color: #333; /* White text color */
        }

        .button {
            display: inline-block;
            padding: 12px 30px;
            font-size: 1em;
            color: #fff;
            background-color: #0056b3;	; /* Golden yellow button background */
            border: none;
            border-radius: 8px;
            text-decoration: none;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s; /* Smooth transitions */
        }

        .button:hover {
            background-color: #ffdf00; /* Lighter shade on hover */
            transform: scale(1.05); /* Slight zoom effect on hover */
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                max-width: 90%;
                padding: 20px;
            }
            h1 {
                font-size: 2em;
            }
            p {
                font-size: 1em;
            }
            .button {
                padding: 10px 20px;
                font-size: 0.9em;
            }
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    <div class="container">
        <h1>Welcome to GMG Hotel</h1>
        <p>Experience luxury and comfort at the GMG Hotel. Book your stay with us today!</p>
        <a href="Rooms.jsp" class="button">Book Now</a>
    </div>
</body>
</html>
