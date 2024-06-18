
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Check Balance Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 50%;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label, input {
            margin-bottom: 10px;
            font-size: 16px;
        }
        input[type="submit"] {
            align-self: center;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
        }
         .button-container a {
            display: inline-block;
            text-decoration: none;
            text-align: center;
            padding: 10px 20px;
            margin: 5px;
            background-color: #ff6347;
            color: white;
            border-radius: 4px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        .button-container a:hover {
            background-color: #ff4500;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Check Customer Balance</h1>
    <form action="/checkCurentBalance" method="get">
        <label for="uniqueId">Enter Customer ID:</label>
        <input type="number" id="uniqueId" name="uniqueId" required>
        <input type="submit" value="Check Balance">
    </form>
</div>
<div style="text-align: center;">
   <div class="button-container">
        <a href="/homepage">Go to Home Page</a>
    </div>
</div>
</body>
</html>

