<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Loan Availability Result</title>
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
        .result {
            padding: 10px;
            background-color: #e7f3fe;
            border-left: 6px solid #2196F3;
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
        <h2>Loan Availability Result</h2>
        <div class="result">
            <p>${loanResult}</p>
        </div>
        <a href="loanForm" class="btn">Check Another Loan</a>
    </div>
    <div style="text-align: center;">
   <div class="button-container">
			<a href="/homepage">Go to Home Page</a> 
		</div>
</div>
</body>
</html>
