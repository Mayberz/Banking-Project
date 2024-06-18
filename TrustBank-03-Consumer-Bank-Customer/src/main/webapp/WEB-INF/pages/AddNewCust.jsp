<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="frm"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Customer</title>
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

        form {
            width: 50%;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
        }

        table td {
            padding: 10px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #ff6347;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #ff4500;
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

<h1>Add Customer</h1>

<frm:form modelAttribute="customer" action="/addCustomer" method="post">
    <table>
        <tr>
            <td>Name:</td>
            <td><frm:input path="name" /></td>
        </tr>
        <tr>
            <td>Age:</td>
            <td><frm:input path="age" /></td>
        </tr>
        <tr>
            <td>Balance:</td>
            <td><frm:input path="bal" /></td>
        </tr>
        <tr>
            <td>Monthly Salary:</td>
            <td><frm:input path="monthlySal" /></td>
        </tr>
        <tr>
            <td>Nationality:</td>
            <td><frm:input path="nationality" /></td>
        </tr>
        <tr>
            <td>Local Address:</td>
            <td><frm:input path="localAddress" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" value="Save"></td>
        </tr>
    </table>
</frm:form>
<div class="button-container">
    <a href="/homepage">Go to Home Page</a>
</div>
</body>
</html>
