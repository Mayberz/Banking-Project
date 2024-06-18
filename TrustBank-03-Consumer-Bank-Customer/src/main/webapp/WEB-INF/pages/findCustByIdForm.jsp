<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Find Customer by ID</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 50%;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9;
        }
        h2 {
            text-align: center;
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        label, input, button {
            margin: 10px 0;
        }
        input {
            padding: 5px;
            width: 50%;
        }
        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
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
        <h2>Find Customer by ID</h2>
        <form action="/getCustById" method="get">
            <label for="uniqueId">Enter Unique ID:</label>
            <input type="text" id="uniqueId" name="uniqueId" required>
            <button type="submit">Find Customer</button>
        </form>
    </div>
    <div style="text-align: center;">
   <div class="button-container">
        <a href="/homepage">Go to Home Page</a>
    </div>
</div>
</body>
</html>
