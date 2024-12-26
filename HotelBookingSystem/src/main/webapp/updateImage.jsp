<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Room Image</title>
    <style>
        /* Similar styling as you have above */
        body {
            font-family: 'Poppins', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background: url('./images/3.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
        }

        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.6);
        }

        .form-container {
            background: rgba(255, 255, 255, 0.85);
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
            text-align: center;
            position: relative;
            z-index: 2;
            max-width: 400px;
            width: 100%;
        }

        .form-container h2 {
            margin-bottom: 20px;
            color: #333;
        }

        .form-container label {
            display: block;
            font-weight: bold;
            margin-bottom: 10px;
            color: #333;
        }

        .form-container select,
        .form-container input[type="file"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background: #fff;
        }

        .form-container button {
            padding: 12px 20px;
            background: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        .form-container button:hover {
            background: #45a049;
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    <div class="form-container">
        <h2>Update Image for Room</h2>
        <form action="UploadImageServlet" method="post" enctype="multipart/form-data">
            <label for="roomType">Room Type</label>
            <select id="roomType" name="roomType" required>
                <option value="basic">Basic Room</option>
                <option value="deluxe">Deluxe Room</option>
                <option value="premium1">Premium Room</option>
            </select>
            <label for="image">Upload Image</label>
            <input type="file" id="image" name="image" required>
            <button type="submit">Upload Image</button>
        </form>
</body>
</html>
