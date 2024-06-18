<!DOCTYPE html>
<html>
<head>
    <title>Staff Hub</title>
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
            position: relative;
        }
        .nav-bar a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            position: absolute;
            left: 10px;
            top: 50%;
            transform: translateY(-50%);
            border: 1px solid white;
            border-radius: 5px;
            background-color: rgba(255, 255, 255, 0.1);
            transition: background-color 0.3s;
        }
        .nav-bar a:hover {
            background-color: rgba(255, 255, 255, 0.2);
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
            margin-bottom: 20px;
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
        Trust Bank - Staff Hub
        <a href="/homepage">Homepage</a>
    </div>
    <div class="container">
        <div class="box">
            <h1>Staff Hub</h1>
            <a href="/addEmployee"><i class="fas fa-user-plus"></i>Add New Employee</a>
            <a href="/getallBankemp"><i class="fas fa-users"></i>View All Employees</a>
            <a href="/showFindEmpForm"><i class="fas fa-search"></i>Find Employee by ID</a>
            <a href="/updateDeptnoForm"><i class="fas fa-edit"></i>Update Employee Department</a>
            <a href="/loanForm"><i class="fas fa-file-alt"></i>Employee Loan Application</a>
        </div>
    </div>
    <div class="footer">
        &copy; 2024 Trust Bank. All rights reserved.
    </div>
</body>
</html>
