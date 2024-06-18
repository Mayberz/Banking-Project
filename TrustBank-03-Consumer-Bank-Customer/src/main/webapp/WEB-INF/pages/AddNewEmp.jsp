<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add New Employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            text-align: center;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #333333;
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .form-group {
            margin: 10px 0;
            width: 100%;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input {
            padding: 10px;
            width: 100%;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        button {
            padding: 10px 20px;
            color: #ffffff;
            background-color: #007bff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #0056b3;
        }
        .form-actions {
            margin-top: 20px;
        }
        .button-container {
            text-align: center;
            margin-top: 20px;
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
        <h1>Add New Employee</h1>
        <form:form action="/addEmployee" modelAttribute="emp" method="post">
            <div class="form-group">
                <label for="name">Name</label>
                <form:input path="name" id="name" />
            </div>
            <div class="form-group">
                <label for="deptNo">Department Number</label>
                <form:input path="deptNo" id="deptNo" />
            </div>
            <div class="form-group">
                <label for="city">City</label>
                <form:input path="city" id="city" />
            </div>
            <div class="form-actions">
                <button type="submit">Add Employee</button>
            </div>
            <div class="button-container">
        <a href="/homepage">Go to Home Page</a>
    </div>
        </form:form>
    </div>
    
</body>
</html>
