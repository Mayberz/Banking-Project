<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Details</title>
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

table {
	width: 100%;
	margin: 20px 0;
	border-collapse: collapse;
}

table, th, td {
	border: 1px solid #ddd;
}

th, td {
	padding: 10px;
	text-align: left;
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
		<h2>Customer Details</h2>
		<table>
			<tr>
				<th>Unique ID</th>
				<td>${getcustById.uniqueId}</td>
			</tr>
			<tr>
				<th>Name</th>
				<td>${getcustById.name}</td>
			</tr>
			<tr>
				<th>Age</th>
				<td>${getcustById.age}</td>
			</tr>
			<tr>
				<th>Balance</th>
				<td>${getcustById.bal}</td>
			</tr>
			<tr>
				<th>Monthly Salary</th>
				<td>${getcustById.monthlySal}</td>
			</tr>
			<tr>
				<th>Nationality</th>
				<td>${getcustById.nationality}</td>
			</tr>
			<tr>
				<th>Local Address</th>
				<td>${getcustById.localAddress}</td>
			</tr>
		</table>
	</div>
	<div style="text-align: center;">
		<div class="button-container">
			<a href="/homepage">Go to Home Page</a> 
		</div>
	</div>
</body>
</html>
