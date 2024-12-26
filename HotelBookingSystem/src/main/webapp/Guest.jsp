<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Guest Details</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600&display=swap" rel="stylesheet">
<style>
/* Global styles */
body {
    font-family: 'Montserrat', sans-serif;
    background-color: #f0f2f5;
    margin: 0;
    padding: 0;
    display: flex;
    flex-direction: column;
    min-height: 100vh;
    background-image: linear-gradient(to bottom right, #74ebd5, #acb6e5);
}

.container {
    width: 90%;
    max-width: 800px;
    margin: 0 auto;
    padding: 30px;
    background: #ffffff;
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
}

.hero {
    background: url('./images/new3.jpg') center center/cover no-repeat;
    position: relative;
    text-align: center;
    color: #ffffff;
    padding: 80px 20px;
    margin-bottom: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
}

.hero::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.5); /* Dark overlay for better text readability */
    z-index: -1;
    border-radius: 10px;
}

.hero h1 {
    font-size: 3.5rem;
    margin-bottom: 20px;
    color: #ffffff;
}

.hero p {
    font-size: 1.5rem;
    margin-bottom: 40px;
    color: #ffffff;
}

.form-container {
    background: #ffffff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    margin-bottom: 30px;
}

.form-container form {
    display: grid;
    gap: 20px;
}

.form-container .field-group {
    display: grid;
    gap: 10px;
}

.form-container label {
    font-weight: bold;
    color: #555555;
}

.form-container input[type="text"],
.form-container input[type="email"],
.form-container input[type="date"],
.form-container select {
    width: 100%;
    padding: 15px;
    border: 1px solid #ccc;
    border-radius: 6px;
    background-color: #f9f9f9;
    transition: border-color 0.3s;
}

.form-container input[type="text"]:focus,
.form-container input[type="email"]:focus,
.form-container input[type="date"]:focus,
.form-container select:focus {
    border-color: #007bff;
    outline: none;
}

.form-container button {
    width: 100%;
    padding: 15px;
    background: #007bff;
    border: none;
    color: white;
    font-size: 1.2rem;
    cursor: pointer;
    border-radius: 6px;
    transition: background-color 0.3s, transform 0.2s;
}

.form-container button:hover {
    background: #0056b3;
    transform: translateY(-2px);
}

.footer {
    width: 100%;
    background: #007bff;
    color: #ffffff;
    padding: 20px 0;
    text-align: center;
}

@media (max-width: 768px) {
    .container {
        width: 100%;
        padding: 20px;
    }

    .hero h1 {
        font-size: 2.5rem;
    }

    .hero p {
        font-size: 1.2rem;
    }

    .form-container {
        padding: 20px;
    }

    
}
</style>
</head>
<body>
<div class="hero">
    <h1>Guest Details</h1>
    <p>Discover your preferred dates and unlock a world of comfort and convenience.</p>
</div>

<div class="container">
    <div class="form-container">
        <form action="BookingServlet" method="POST">

            <div class="field-group">
                <label for="guestname">Guest Name:</label>
                <input type="text" id="guestname" name="guestname" placeholder="Guest Name" required pattern="[A-Za-z\s]+" title="Name should only contain letters and spaces.">
            </div>
            <div class="field-group">
                <label for="gender">Gender:</label>
                <select id="gender" name="gender" required>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="other">Other</option>
                </select>
            </div>
            <div class="field-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder="Email" required>
            </div>
            <div class="field-group">
                <label for="phonenumber">Phone Number:</label>
                <input type="text" id="phonenumber" name="phonenumber" placeholder="Contact Number" required pattern="\d{10}" title="Phone number should be 10 digits.">
            </div>
            <div class="field-group">
                <label for="adharid">Aadhaar ID:</label>
                <input type="text" id="adharid" name="adharid" placeholder="Aadhaar ID" required pattern="\d{12}" title="Aadhaar ID should be 12 digits.">
            </div>
            <div class="field-group">
                <label for="roomtype">Room Type:</label>
                <select id="roomtype" name="roomtype">
                    <option value="basic room">Basic Room</option>
                    <option value="deluxe room">Deluxe Room</option>
                    <option value="premium room">Premium Room</option>
                </select>
            </div>
            <a href="check.jsp">
            <button type="submit">Submit <i class="fas fa-chevron-right"></i></button></a>
        </form>
    </div>
</div>


<div class="footer">
    <p>Hotel GMG &copy;2024,All Rights Reserved</p>
</div>

</body>
</html>