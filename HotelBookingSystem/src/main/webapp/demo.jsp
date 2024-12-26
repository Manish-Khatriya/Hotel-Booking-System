<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta name="description" content="Welcome to the most extraordinary hotel in Indore, India">
    <meta name="keywords" content="hotel, GMG Hotel, Indore">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <title>Hotel GMG | About</title>
    <style>
        /* Global Styles */
        @charset "ISO-8859-1";

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html, body {
            font-family: 'Poppins', sans-serif;
            line-height: 1.7em;
            color: #333;
            background-color: #f7f7f7;
        }

        a {
            color: #333;
            text-decoration: none;
        }

        h1, h2, h3 {
            padding-bottom: 15px;
        }

        p {
            margin: 10px 0;
        }

        .container {
            max-width: 1100px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .text-primary {
            color: #f7c08a;
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
            background: #f7c08a;
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
            background: #f7c08a;
            color: #333;
        }

        .clr {
            clear: both;
        }

        .l-heading {
            font-size: 40px;
            color: #333;
        }

        /* Navbar */
        #navbar {
            background: rgba(51, 51, 51, 0.9);
            color: #fff;
            overflow: auto;
            padding: 10px 0;
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
            color: #f7c08a;
        }

        /* About Section */
        #about-info {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 60px 20px;
            background: #f7f7f7;
        }

        #about-info .info-left {
            flex: 1;
            padding-right: 30px;
        }

        #about-info .info-right {
            flex: 1;
            text-align: center;
        }

        #about-info .info-right img {
            max-width: 100%;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        #about-info .info-right img:hover {
            transform: scale(1.05);
        }

        /* Testimonials */
        #testimonials {
            background: #444;
            color: #fff;
            padding: 60px 20px;
            text-align: center;
        }

        #testimonials h2 {
            color: #f7c08a;
            margin-bottom: 30px;
        }

        .testimonial {
            margin-bottom: 30px;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            background: #333;
            transition: background 0.3s, transform 0.3s;
        }

        .testimonial:hover {
            background: #555;
            transform: scale(1.05);
        }

        .testimonial img {
            border-radius: 50%;
            margin-bottom: 20px;
            max-width: 100px;
            border: 3px solid #f7c08a;
        }

        /* Footer */
        #main-footer {
            text-align: center;
            background: #333;
            color: #fff;
            padding: 20px;
        }

    </style>
</head>
<body>
    <header>
        <nav id="navbar">
            <div class="container">
                <h1 class="logo">
                    <a href="hotel.jsp">GMG Group</a>
                </h1>
                <ul>
                    <li><a href="hotel.jsp">Home</a></li>
                    <li><a class="current" href="about.jsp">About</a></li>
                    <li><a href="contact.jsp">Contact</a></li>
                </ul>
            </div>
        </nav>
    </header>

    <section id="about-info" class="bg-light py-3">
        <div class="container">
            <div class="info-left">
                <h1 class="l-heading"><span class="text-primary">About</span> Hotel GMG</h1>
                <p> 
                    Welcome to GMG Hotel, an epitome of luxury and sophistication nestled in the heart of Indore. Our hotel offers an array of elegantly appointed rooms and suites designed for both comfort and style, catering to every traveler's needs. Indulge in culinary delights at GMG Restaurant, savor cocktails with panoramic views at our Sky Bar, or enjoy a relaxed atmosphere at Cafe GMG. Our exceptional amenities include a rejuvenating spa, a serene outdoor pool, and a state-of-the-art business center, ensuring both relaxation and productivity.
                </p>
                <p>
                    Our exceptional amenities include a rejuvenating spa, a serene outdoor pool, and a state-of-the-art business center, ensuring both relaxation and productivity.
                </p>
            </div>

            <div class="info-right">
                <img src="./images/thr3.jpg" alt="hotel">
            </div>
        </div>
    </section>

    <section id="testimonials" class="py-3">
        <div class="container">
            <h2 class="l-heading">What Our Guests Say</h2>
            <div class="testimonial bg-primary">
                <img src="./images/six6.jpg" alt="disha">
                <p>
                    "I have stayed at many hotels worldwide, but GMG Hotel truly stands out for its exceptional service and attention to detail. From the moment I checked in, I was treated like royalty. The staff was incredibly attentive, and nothing was too much trouble. The room was beautifully furnished, spacious, and had all the amenities one could need. The bed was so comfortable that I had the best sleep I have had in years. GMG Hotel exceeded all my expectations and made my stay in Indore absolutely unforgettable."
                </p>
            </div>
            <div class="testimonial bg-primary">
                <img src="./images/fiv5.jpg" alt="aliya">
                <p>
                    "Stayin gat GMG Hotel was an experience in unparalleled luxury and elegance.
 The decor throughout the hotel is absolutely stunning, and my suite was the epitome of opulence with beautiful furnishings and 
 a breathtaking view of the city. The service was impeccable  every staff member I encountered was courteous, professional, and eager to assist. 
 The spa was a highlight, offering the most relaxing treatments in a serene setting. From the gourmet dining to the exquisite accommodations,
  GMG Hotel is a true gem in indore and a haven for those seeking the finest in hospitality." 

</p>
</div>
</div>
</section>
	
	<footer id="main-footer">
		<p>Hotel GMG &copy;2024,All Rights Reserved</p>

	</footer>
</body>
</html>
