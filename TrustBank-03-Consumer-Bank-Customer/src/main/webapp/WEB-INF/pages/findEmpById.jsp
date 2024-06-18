<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Details</title>
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
        .employee-details {
            margin-bottom: 15px;
        }
        .employee-details label {
            font-weight: bold;
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
        <h2>Employee Details</h2>
        <c:if test="${not empty findEmpByid}">
            <div class="employee-details">
                <label>Employee ID:</label>
                <span>${findEmpByid.eid}</span>
            </div>
            <div class="employee-details">
                <label>Name:</label>
                <span>${findEmpByid.name}</span>
            </div>
           
            <div class="employee-details">
                <label>Department No:</label>
                <span>${findEmpByid.deptNo}</span>
            </div>
             <div class="employee-details">
                <label>City:</label>
                <span>${findEmpByid.city}</span>
            </div>
        </c:if>
        <c:if test="${empty findEmpByid}">
            <p>No employee found with the provided ID.</p>
        </c:if>
    </div>
    <div style="text-align: center;">
  <div class="button-container">
        <a href="/homepage">Go to Home Page</a>
    </div>
</div>
</body>
</html>
