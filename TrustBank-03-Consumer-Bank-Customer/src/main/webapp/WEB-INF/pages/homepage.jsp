<!DOCTYPE html>
<html>
<head>
    <title>Home Page</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e9ecef;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        .nav-bar {
            width: 100%;
            background-color: #007bff;
            padding: 10px 0;
            color: white;
            text-align: center;
            font-size: 24px;
        }
        .container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        .box {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 300px;
        }
        .box h1 {
            color: #333333;
            margin-bottom: 10px;
            font-size: 22px;
        }
        .box p {
            color: #555555;
            margin-bottom: 30px;
        }
        .box a {
            text-decoration: none;
            color: #ffffff;
            background-color: #007bff;
            padding: 15px 20px;
            border-radius: 8px;
            transition: background-color 0.3s, transform 0.3s;
            display: block;
            margin: 10px 0;
        }
        .box a:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }
        .box a i {
            margin-right: 10px;
        }
        .footer {
            background-color: #343a40;
            color: white;
            text-align: center;
            padding: 10px 0;
        }
        @media (max-width: 600px) {
            .box {
                width: 90%;
                padding: 20px;
            }
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <div class="nav-bar">
        Trust Bank
    </div>
    <div class="container">
        <div class="box">
            <h1>Welcome to Trust Bank</h1>
            <p>Your trusted banking partner.</p>
            <a href="/customerServices"><i class="fas fa-user"></i>Customer Services</a>
            <a href="/employeeServices"><i class="fas fa-user-tie"></i>Employee Services</a>
        </div>
    </div>
    <div class="footer">
        &copy; 2024 Trust Bank. All rights reserved.
    </div>
</body>
</html>
