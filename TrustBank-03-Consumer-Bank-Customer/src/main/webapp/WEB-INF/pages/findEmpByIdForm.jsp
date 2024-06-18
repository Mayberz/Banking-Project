\<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Find Employee By ID</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        .form-group button {
            padding: 10px 15px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
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
        <h2>Find Employee By ID</h2>
        <form:form method="get" modelAttribute="emp" action="/findBankEmpById">
            <div class="form-group">
                <label for="eid">Employee ID:</label>
                <form:input path="eid" id="eid" />
            </div>
            <div class="form-group">
                <button type="submit">Find Employee</button>
            </div>
        </form:form>
    </div>
    <div style="text-align: center;">
    <div class="button-container">
        <a href="/homepage">Go to Home Page</a>
        <a href="javascript:history.back()">Service Page</a>
    </div>
</div>
</body>
</html>
