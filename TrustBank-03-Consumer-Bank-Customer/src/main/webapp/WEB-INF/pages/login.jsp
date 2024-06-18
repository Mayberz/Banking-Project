<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            flex-direction: column;
        }
        .login-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
            margin-bottom: 20px;
        }
        .login-container h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .login-container form {
            display: flex;
            flex-direction: column;
        }
        .login-container input[type="text"],
        .login-container input[type="password"] {
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .login-container input[type="submit"] {
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .login-container input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .error {
            color: red;
            margin-bottom: 10px;
        }
        .links-container {
            display: flex;
            justify-content: space-around;
            width: 300px;
        }
        .links-container a {
            text-decoration: none;
            color: #007bff;
            background-color: #e9ecef;
            padding: 10px;
            border-radius: 4px;
            transition: background-color 0.3s, transform 0.3s;
        }
        .links-container a:hover {
            background-color: #d6d8db;
            transform: scale(1.05);
        }
        .support {
            margin-top: 20px;
            color: #333;
        }
        .support a {
            color: #007bff;
            text-decoration: none;
        }
        .support a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <c:if test="${param.error != null}">
            <p class="error">Invalid username or password.</p>
        </c:if>
        <form:form method="post" modelAttribute="login" action="${pageContext.request.contextPath}/perform_login">
            <form:input path="username" type="text" placeholder="Username" />
            <form:input path="password" type="password" placeholder="Password" />
            <input type="submit" value="Login" />
        </form:form>
        <div class="links-container">
            <a href="/homepage">Homepage</a>
            <a href="javascript:history.back()">Service Page</a>
        </div>
    </div>
    <div class="support">
        <p>If you don't know your login details, please <a href="/support">contact support</a>.</p>
    </div>
</body>
</html>