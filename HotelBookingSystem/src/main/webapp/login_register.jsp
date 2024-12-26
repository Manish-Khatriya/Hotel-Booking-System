 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login and Registration</title>
    <link rel="apple-touch-icon" sizes="180x180"
	href="./images/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="./images/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="./images/favicon-16x16.png">
<link rel="manifest" href="./favicons/site.webmanifest">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="css/styless.css">
    <style>
        @charset "ISO-8859-1";
        body {
            font-family: 'Poppins', sans-serif;
            background-image: url('./images/image.png');
            background-size: cover;
            background-position: center 55%;
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
            background-color: rgba(0, 0, 0, 0.4); /* Darker overlay for better contrast */
            z-index: 1;
        }

        .container {
            width: 100%;
            max-width: 420px;
            padding: 30px 40px;
            background: transparent;
            border: 2px solid rgba(255, 255, 255, 0.5);
            backdrop-filter: blur(9px);
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
            border-radius: 12px;
            z-index: 2;
            position: relative;
            text-align: center;
            margin: 20px;
            color: #fff;
        }

        .form-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 0 auto;
            transition: opacity 0.5s ease-in-out;
        }

        .form-container.hidden {
            opacity: 0;
            visibility: hidden;
            position: absolute;
        }

        .logo {
            width: 100px;
            margin-bottom: 20px;
        }

        h2 {
            margin-bottom: 30px;
            color: #007bff;
            font-size: 28px;
        }

        .input-group {
            width: 100%;
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .input-group input {
            width: 100%;
            padding: 15px;
            border: 2px solid rgba(255, 255, 255, .2);
            border-radius: 40px;
            font-size: 16px;
            color: #fff;
            background: transparent;
            transition: all 0.3s ease-in-out;
            margin-left: 10px;
        }

        .input-group input::placeholder {
            color: #fff;
        }

        .input-group input:focus {
            border-color: #007bff;
            box-shadow: 0 0 10px rgba(0, 123, 255, 0.3);
            outline: none;
        }

        .input-group i {
            color: #007bff;
            font-size: 1.2em;
        }

        button {
            width: 50%;
            padding: 15px;
            background-color: #fff;
            border: none;
            border-radius: 40px;
            color: #333;
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
            color: #ffffff;
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
        <!-- Login Form -->
        <div class="form-container" id="login-form">
            <h2>Login</h2>
            <form action="UserServlet?action=login" method="post">
                <div class="input-group">
                    <i class="fas fa-user"></i>
                    <input type="text" name="username" placeholder="Username" required>
                </div>
                <div class="input-group">
                    <i class="fas fa-lock"></i>
                    <input type="password" name="password" placeholder="Password" required>
                </div>
                <button type="submit">Login</button>
            </form>
            <p>Don't have an account? <a href="#" onclick="showRegisterForm()"><b>Register here</b></a></p>
            <% 
                String error = request.getParameter("error");
                String success = request.getParameter("success");
                if (error != null && error.equals("invalid")) {
            %>
                    <p class='error'>Invalid username or password</p>
            <% 
                } else if (success != null && success.equals("registered")) {
            %>
                    <p class='success'>Registration successful! Please login.</p>
            <% 
                }
            %>
        </div>

        <!-- Registration Form -->
        <div class="form-container hidden" id="register-form">
            <h2>Register</h2>
            <form action="UserServlet?action=register" method="post">
                <div class="input-group">
                    <i class="fas fa-user"></i>
                    <input type="text" name="username" placeholder="Username" required>
                </div>
                <div class="input-group">
                    <i class="fas fa-envelope"></i>
                    <input type="email" name="email" placeholder="Email" required>
                </div>
                <div class="input-group">
                    <i class="fas fa-lock"></i>
                    <input type="password" name="password" placeholder="Password" required>
                </div>
                <button type="submit">Register</button>
            </form>
            <p>Already have an account? <a href="#" onclick="showLoginForm()"><b>Login here</b></a></p>
            <% 
                String regError = request.getParameter("error");
                if (regError != null && regError.equals("failed")) {
            %>
                    <p class='error'>Registration failed. Please try again.</p>
            <% 
                }
            %>
        </div>
    </div>

    <script>
        function showRegisterForm() {
            document.getElementById('login-form').classList.add('hidden');
            document.getElementById('register-form').classList.remove('hidden');
        }

        function showLoginForm() {
            document.getElementById('register-form').classList.add('hidden');
            document.getElementById('login-form').classList.remove('hidden');
        }

        // Show the appropriate form based on URL parameters
        window.onload = function() {
            const urlParams = new URLSearchParams(window.location.search);
            if (urlParams.has('register')) {
                showRegisterForm();
            } else {
                showLoginForm();
            }
        }
    </script>
</body>
</html>