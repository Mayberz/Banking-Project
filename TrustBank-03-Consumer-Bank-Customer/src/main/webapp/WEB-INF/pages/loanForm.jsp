<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title>Check Loan Availability</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.container {
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
	margin-bottom: 20px;
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

.btn {
	background-color: #4CAF50;
	color: white;
	padding: 10px 15px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.btn:hover {
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
		<h2>Check Loan Availability</h2>
		<form method="GET" action="/loan">
			<div class="form-group">
				<label for="uniqueId">Unique ID:</label> <input type="text"
					id="uniqueId" name="uniqueId" required="true" />
			</div>
			<div class="form-group">
				<label for="age">Age:</label> <input type="text" id="age" name="age"
					required="true" />
			</div>
			<div class="form-group">
				<label for="monthlySal">Monthly Salary:</label> <input type="text"
					id="monthlySal" name="monthlySal" required="true" />
			</div>
			<button type="submit" class="btn">Check Loan</button>
			<div class="button-container">
				<a href="/homepage">Go to Home Page</a> <a
					href="javascript:history.back()">Service Page</a>
			</div>
		</form>
	</div>
	</body>
</html>
