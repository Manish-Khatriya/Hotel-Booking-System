<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Hotel GMG | Rooms Type</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #f4f4f9, #e8efff);
            color: #333;
        }
        header {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 1rem 0;
        }
        .container {
            width: 90%;
            margin: 2rem auto;
            overflow: hidden;
        }
        .room {
            display: flex;
            flex-wrap: wrap;
            background: white;
            border: 1px solid #ccc;
            margin: 1rem 0;
            padding: 1rem;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            align-items: center;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .room:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
        }
        .image-container {
            flex: 1;
            max-width: 300px;
            min-width: 250px;
            margin-right: 20px;
            border-radius: 8px;
            overflow: hidden;
        }
        .image-container img {
            width: 100%;
            height: auto;
            border-radius: 8px;
        }
        .room-details {
            flex: 2;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            padding: 10px;
        }
        .room-details h2 {
            color: #333;
            margin-top: 0;
        }
        .room-details p {
            color: #666;
            line-height: 1.5;
            margin-top: 0;
        }
        .tags {
            display: flex;
            flex-wrap: wrap;
            gap: 5px;
            margin: 10px 0;
        }
        .tags span {
            background-color: #e8efff;
            color: #333;
            padding: 5px 10px;
            border-radius: 4px;
            font-size: 14px;
        }
        .price {
            font-size: 24px;
            font-weight: bold;
            margin: 10px 0;
            color: #4CAF50;
        }
        .buttons {
            display: flex;
            gap: 10px;
            margin-top: 10px;
        }
        .buttons button {
            flex: 1;
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }
        .buttons button:hover {
            background-color: #45a049;
        }
        @media (max-width: 768px) {
            .room {
                flex-direction: column;
                text-align: center;
            }
            .image-container, .room-details {
                max-width: 100%;
                margin: 0;
            }
            .buttons {
                flex-direction: column;
            }
            .buttons button {
                width: 100%;
                margin-top: 5px;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to GMG Hotel</h1>
        <p>Choose from our range of room types to suit your needs</p>
    </header>
    <div class="container">
        <!-- Basic Room -->
        <div class="room">
            <div class="image-container">
                <!-- Dynamically load the updated image with a timestamp to avoid caching -->
                <img src="images/basic.jpg?<%= new java.util.Date().getTime() %>" alt="Basic Room">
            </div>
            <div class="room-details">
                <h2>Basic Room</h2>
                <p>Our Basic Rooms offer the best in comfort and style. Perfect for guests who enjoy modern amenities and beautiful views.</p>
                <div class="tags">
                    <span>Bedroom</span>
                    <span>Balcony</span>
                </div>
                <div class="tags">
                    <span>Wifi</span>
                </div>
                <div class="price">Rs.1500/- per night</div>
                <div class="buttons">
                    <a href="Guest.jsp">
                        <button>Book Now</button>
                    </a>
                </div>
            </div>
        </div>

        <!-- Deluxe Room -->
        <div class="room">
            <div class="image-container">
                <!-- Dynamically load the updated image with a timestamp to avoid caching -->
                <img src="images/deluxe.jpg?<%= new java.util.Date().getTime() %>" alt="Deluxe Room">
            </div>
            <div class="room-details">
                <h2>Deluxe Room</h2>
                <p>The Deluxe Room provides extra space and comfort. Enjoy additional amenities and a stylish, modern design.</p>
                <div class="tags">
                    <span>Bedroom</span>
                    <span>Balcony</span>
                </div>
                <div class="tags">
                    <span>Wifi</span>
                    <span>Air Conditioner</span>
                    <span>Room Heater</span>
                </div>
                <div class="price">Rs.2500/- per night</div>
                <div class="buttons">
                    <a href="Guest.jsp">
                        <button>Book Now</button>
                    </a>
                </div>
            </div>
        </div>

        <!-- Premium Room -->
        <div class="room">
            <div class="image-container">
                <!-- Dynamically load the updated image with a timestamp to avoid caching -->
                <img src="images/premium1.jpg?<%= new java.util.Date().getTime() %>" alt="Premium Room">
            </div>
            <div class="room-details">
                <h2>Premium Room</h2>
                <p>Our Premium Rooms offer the ultimate in comfort and luxury. Ideal for guests who appreciate finer details and high-end amenities.</p>
                <div class="tags">
                    <span>Bedroom</span>
                    <span>Balcony</span>
                    <span>Kitchen</span>
                </div>
                <div class="tags">
                    <span>Wifi</span>
                    <span>Air Conditioner</span>
                    <span>Room Heater</span>
                </div>
                <div class="price">Rs.3500/- per night</div>
                <div class="buttons">
                    <a href="Guest.jsp">
                        <button>Book Now</button>
                    </a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
