<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Guest Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        @charset "ISO-8859-1";
        body {
            font-family: 'Poppins', sans-serif;
            background-image: url('./images/2.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #fff;
            position: relative;
            overflow: hidden;
        }

        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.6); /* Darker overlay for better contrast */
            z-index: 1;
        }

        .container {
            width: 100%;
            max-width: 420px;
            padding: 30px 40px;
            background: rgba(255, 255, 255, 0.2); /* Transparent background */
            border: 2px solid rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(9px);
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
            border-radius: 12px;
            z-index: 2;
            position: relative;
            text-align: center;
            color: #fff;
        }

        h2 {
            margin-bottom: 30px;
            color: white;
            font-size: 28px;
        }

        .input-container {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
            position: relative;
        }

        .input-container i {
            margin-right: 10px;
            color: #007bff;
            font-size: 24px; /* Adjust the size of the icons as needed */
        }

        .input-container input {
            width: 100%;
            padding: 15px;
            border: 2px solid rgba(255, 255, 255, 0.2);
            border-radius: 40px;
            font-size: 16px;
            color: #fff;
            background: transparent;
            transition: border-color 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
        }

        .input-container input::placeholder {
            color: #ccc;
        }

        .input-container input:focus {
            border-color: #007bff;
            box-shadow: 0 0 10px rgba(0, 123, 255, 0.3);
            outline: none;
        }

        button {
            width: 50%;
            padding: 15px;
            background-color: #007bff;
            border: none;
            border-radius: 40px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
            font-weight: 600;
        }

        button:hover {
            background-color: #0056b3;
        }

        p {
            margin-top: 20px;
            font-size: 0.9em;
        }

        a {
            color: #007bff;
            text-decoration: none;
            transition: color 0.3s ease-in-out;
        }

        a:hover {
            text-decoration: underline;
            color: #0056b3;
        }

        p.error {
            color: red;
            font-size: 0.9em;
        }

        p.success {
            color: green;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    <div class="container">
        <h2>Guest Login</h2>
        <form action="LoginServlet1" method="post">
            <div class="input-container">
                <i class="fas fa-id-card"></i>
                <input type="text" id="adharid" name="adharid" placeholder="Aadhaar ID" required>
            </div>
            <div class="input-container">
                <i class="fas fa-phone"></i>
                <input type="text" id="phonenumber" name="phonenumber" placeholder="Phone Number" required>
            </div>
            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>
