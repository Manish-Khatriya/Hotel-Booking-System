<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1"> <!-- Ensure this matches the pageEncoding -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - GMG Hotel</title>
    <style>
        /* Body setup */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }

        /* Main container for the background image and content */
        #receptionists {
            position: relative;
            background-image: url("./images/PH.jpg");
            background-size: cover;
            background-position: center;
            height: 100%;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Contact container styling */
        .contact-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
            z-index: 1; /* Ensure it stays above the background */
        }

        .contact-header {
            margin-bottom: 30px;
        }

        .contact-header h1 {
            font-size: 24px;
            margin: 0;
            color: #333;
        }

        .contact-details {
            font-size: 18px;
            line-height: 1.6;
            color: #555;
        }

        .contact-details a {
            color: #1a73e8;
            text-decoration: none;
        }

        .contact-details a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div id="receptionists">
        <div class="contact-container">
            <div class="contact-header">
                <h1>Contact Us</h1>
            </div>
            <div class="contact-details">
                <p><strong>Phone Number:</strong> +91 6265455942</p>
                <p><strong>Email Address:</strong> <a href="mailto:contact@gmghotel.com">contact@gmghotel.com</a></p>
                <p><strong>Stay connected with us on social media:</strong></p>
                <p>
                    <a href="https://twitter.com/GMGHotel" target="_blank">Twitter: @GMGHotel</a><br>
                    <a href="https://www.instagram.com/GMGHotel" target="_blank">Instagram: @GMGHotel</a>
                </p>
            </div>
        </div>
    </div>
</body>
</html>
