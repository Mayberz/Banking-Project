<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Employees</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f8ff;
}

h1 {
	color: red;
	text-align: center;
}

table {
	width: 80%;
	margin: 0 auto;
	border-collapse: collapse;
	background-color: #e0f7fa;
}

th, td {
	padding: 10px;
	border: 1px solid #ccc;
	text-align: center;
}

th {
	background-color: #00796b;
	color: white;
}

tr:nth-child(even) {
	background-color: #b2dfdb;
}

tr:nth-child(odd) {
	background-color: #e0f2f1;
}

a {
	color: #00796b;
	text-decoration: none;
	font-weight: bold;
}

a:hover {
	text-decoration: underline;
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
		<c:when test="${!empty AllEmp}">
			<h1>The Employee Info</h1>
			<table>
				<tr>
					<th>eId</th>
					<th>Name</th>
					<th>Dept No</th>
					<th>City</th>
					<th>Action</th>
				</tr>
				<c:forEach var="emp" items="${AllEmp}">
					<tr>
						<td>${emp.eid}</td>
						<td>${emp.name}</td>
						<td>${emp.deptNo}</td>
						<td>${emp.city}</td>
						<td><a href="/updateEmployee?eid=${emp.eid}">Update/Modify</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		<c:otherwise>
			<h1>Data not found</h1>
		</c:otherwise>
	</c:choose>
	<br>
	<h2 style="text-align: center">
		<a href="/addEmployee">Add New Employee Details</a>
	</h2>
	<br>
	<h2 style="text-align: center">
		<a href="/updateDeptnoForm">Update Dept No</a>
	</h2>
	<br>
	<br>
	<h1 style="text-align: center">${resultMsg}</h1>
	<div style="text-align: center;">
	 <div class="button-container">
        <a href="/homepage">Go to Home Page</a>
    </div>
	</div>
</body>
</html>
