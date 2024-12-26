<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel GMG | Welcome</title>
    <meta name="description" content="Welcome to the most extraordinary hotel in Indore, India">
    <meta name="keywords" content="hotel, GMG Hotel, Indore">
    
    <!-- External CSS links -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
    
    <!-- Embedded Styles -->
    <style>
        /* Global Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html,
        body {
            font-family: 'Poppins', sans-serif;
            line-height: 1.7em;
            color: #333;
            background-color: #f7f7f7;
        }

        a {
            color: #333;
            text-decoration: none;
        }

        h1,
        h2,
        h3 {
            padding-bottom: 1px;
        }

        p {
            margin: 10px 0;
        }

        .container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .logo {
            font-size: 33px; /* Adjust the font size as needed */
            margin: 0;
            padding: 0;
            line-height: 0.8;
            text-transform: uppercase;
            font-weight: bold;
            color: #fff; /* Adjust the color if needed */
            text-decoration: none;
            display: flex;
            align-items: center;
        }

        .logo .symbol {
            width: 50px;
            height: 50px;
            background-color: #00796b; /* Teal color */
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-right: 10px;
        }

        .logo .symbol::before {
            content: "\1F3E8"; /* Unicode for a hotel building icon */
            font-size: 1.5rem;
            color: white;
        }

        .logo .text {
            font-weight: bold;
        }

        .text-primary {
        color: #ffa64d;

        }

        .lead {
            font-size: 18px;
            color: #fff;
        }

        .btn {
            display: inline-block;
            font-size: 18px;
            color: #fff;
            background: #333;
            padding: 12px 24px;
            border: none;
            cursor: pointer;
            transition: background 0.3s, transform 0.3s;
        }

        .btn:hover {
            background: #ffa64d;
            color: #fff;
            transform: scale(1.05);
        }

        .btn-light {
            background: #f4f4f4;
            color: #333;
        }

        .bg-dark {
            background: #333;
            color: #fff;
        }

        .bg-primary {
            background: #ffa64d;
            color: #333;
        }

        .clr {
            clear: both;
        }

        .l-heading {
            font-size: 40px;
            color: #fff;
        }

        /* Navbar */
        #navbar {
            background: rgba(51, 51, 51, 0.9);
            color: #fff;
            overflow: auto;
            padding: 4px 1px;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            transition: background 0.3s;
        }

        #navbar a {
            color: #fff;
            padding: 10px 15px;
            text-transform: uppercase;
        }

        #navbar ul {
            float: right;
            list-style: none;
        }

        #navbar ul li {
            float: left;
        }

        #navbar ul li a:hover,
        #navbar ul li a.current {
            background: #444;
            color: #ffa64d;
        }

        /* Showcase */
        #showcase {
            background-image: url("./images/start.jpg");
            height: 91.5vh;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: #fff;
            margin-top: 80px;
        }

        #showcase .showcase-content h1 {
            font-size: 50px;
            line-height: 1.2em;
            text-shadow:  1px 1px 2px rgba(0, 0, 0, 0.5);

        }

        #showcase .showcase-content p {
            padding-bottom: 20px;
            line-height: 1.7em;
            font-size: 18px;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.6);
        }

        /* Home Info */
        #home-info {
            display: flex;
            height: 380px;
            align-items: center;
            background: #444;
            color: #fff;
        }

        #home-info .info-img {
            flex: 1;
            width: 45%;
            background-image: url('./images/pexels.jpg');
            min-height: 100%;
            background-position: center 55%;
            background-size: cover ;
            height: 100%;
        }

        #home-info .info-content {
            flex: 1;
            padding: 30px;
            text-align: center;
        }

        /* Features */
        #features {
            display: flex;
            justify-content: space-around;
            align-items: center;
            padding: 60px 50px;
            background: #fff;
        }

        .box {
            flex: 1;
            margin: 0 15px;
            padding: 30px;
            text-align: center;
            background: #f4f4f4;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .box:hover {
            transform: translateY(-10px);
        }

        .box i {
            font-size: 50px;
            margin-bottom: 15px;
            color: #f7c08a;
        }
        .navbar-brand img {
    border: 2px solid rgb(11, 173, 202) ; /* You can customize the color and size of the border */
}



        .box h3 {
            font-size: 22px;
            margin-bottom: 10px;
        }

        .box p {
            font-size: 16px;
            color: #666;
        }

        /* Footer */
        #main-footer {
            text-align: center;
            background: #444;
            color: #fff;
            padding: 20px;
        }
    </style>
</head>
<body>
    <header>
        <nav id="navbar">
            <div class="container">
                <!-- Modified logo section with icon -->
                <h1 class="logo">
                    <a class="navbar-brand">
					<!-- The below line can be an image or a h1, either will work -->
					<img src="./images/hl9.png" alt="Google logo" width="60" height="30px"></a>
                    <a href="hotel.jsp">GMG Group</a>
                </h2> 
                    <ul>
                    <li><a class="current" href="hotel.jsp">Home</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                    <li><a href="login.jsp">Admin</a></li>
                    <li><a href="login_register.jsp">Login/Registration</a></li>
                    <li><a href="Guest_details.jsp">Booking.Details</a></li>
                    </ul>
            </div>
        </nav>
        <div id="showcase">
            <div class="container">
                <div class="showcase-content">
                    <h1>
                        <span class="text-primary">Enjoy</span> Your Stay
                    </h1>
                    <p class="lead">Experience unmatched comfort and convenience.
                        Book your stay with us for exceptional value in the perfect
                        location.</p>
                    <a class="btn" href="Rooms.jsp">Book a Stay</a>
                </div>
            </div>
        </div>
    </header>

    <section id="home-info">
        <div class="info-img"></div>
        <div class="info-content">
            <h2>
                <span class="text-primary">The History</span> Of Our Hotel
            </h2>
            <p>Since 1908, GMG(Goutam Manish Goutam) Hotel has been a landmark of luxury and
                historical charm, hosting royalty and celebrities within its
                stunning Beaux-Arts architecture. Experience timeless elegance and
                modern comfort in the heart of GMG.</p>
            <a href="about.jsp" class="btn btn-light">Read More</a>
        </div>
    </section>

    <section id="features">
        <div class="box">
            <i class="fa-solid fa-hotel"></i>
            <h3>Great Location</h3>
            <p>Near Bherughat, Khandawa Road, Indore, M.P, India</p>
        </div>
        <div class="box">
            <i class="fa-solid fa-utensils"></i>
            <h3>Free Meals</h3>
            <p>Complementary Coffee Sachets, Welcome Drinks</p>
        </div>
        <div class="box">
            <i class="fa-solid fa-dumbbell"></i>
            <h3>Fitness Room</h3>
            <p>Modern Gym, Advanced Equipment, Sauna Facility</p>
        </div>
    </section>

    <div class="clr"></div>

    <footer id="main-footer">
        <p>Hotel GMG &copy; 2024, All Rights Reserved</p>
    </footer>

    
</body>
</html>
