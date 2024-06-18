<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
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
        ul {
            list-style: none;
            padding: 0;
        }
        li {
            margin: 10px 0;
        }
        a {
            text-decoration: none;
            color: #ffffff;
            background-color: #007bff;
            padding: 10px 15px;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        a:hover {
            background-color: #0056b3;
        }
        .nav-item {
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Trust Bank</h1>
        <ul>
            <li class="nav-item"><a href="/consumer/addCustomer">Add New Customer</a></li>
            <li class="nav-item"><a href="/consumer/allCust">View All Customers</a></li>
            <li class="nav-item"><a href="/consumer/showFindCustomerForm">Find Customer by ID</a></li>
            <li class="nav-item"><a href="/consumer/showCheckBalanceForm">Check Customer Balance</a></li>
            <li class="nav-item"><a href="/consumer/addEmployee">Add New Employee</a></li>
            <li class="nav-item"><a href="/consumer/getallBankemp">View All Employees</a></li>
            <li class="nav-item"><a href="/consumer/showFindEmpForm">Find Employee by ID</a></li>
            <li class="nav-item"><a href="/consumer/updateDeptno">Update Employee Department Number</a></li>
            <li class="nav-item"><a href="/consumer/loanForm">Get Loan</a></li>
        </ul>
    </div>
</body>
</html>
