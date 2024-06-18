<%@ page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>Customer Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h1 {
            color: #ff6347;
            text-align: center;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        .no-data {
            color: #ff6347;
            text-align: center;
        }

        .add-customer-link {
            text-align: center;
            margin-top: 20px;
        }

        .result-msg {
            color: #ff6347;
            text-align: center;
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
<c:choose>
    <c:when test="${!empty custList}">
        <h1>Customer Information</h1>
        <table>
            <thead>
            <tr>
                <th>Unique ID</th>
                <th>Name</th>
                <th>Age</th>
                <th>Monthly Salary</th>
                <th>Balance</th>
                <th>Nationality</th>
                <th>Local Address</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="customer" items="${custList}">
                <tr>
                    <td>${customer.uniqueId}</td>
                    <td>${customer.name}</td>
                    <td>${customer.age}</td>
                    <td>${customer.monthlySal}</td>
                    <td>${customer.bal}</td>
                    <td>${customer.nationality}</td>
                    <td>${customer.localAddress}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:when>
    <c:otherwise>
        <h1 class="no-data">Data not found</h1>
    </c:otherwise>
</c:choose>

<div class="add-customer-link">
    <h2><a href="/addCustomer">Add New Customer Details</a></h2>
</div>

<div class="result-msg">${resultMsg}</div>
<div style="text-align: center;">
   <div class="button-container">
        <a href="/homepage">Go to Home Page</a>
    </div>
</div>
</body>
</html>
