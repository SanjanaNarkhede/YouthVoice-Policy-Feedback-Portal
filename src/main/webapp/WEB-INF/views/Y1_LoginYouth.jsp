<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>YouthVoice: Login Youth</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap"
	rel="stylesheet">
<style>
* {
	box-sizing: border-box;
	font-family: 'Open Sans', sans-serif;
}

body {
	background: linear-gradient(to bottom right, #0a0f2c, #1e2746);
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.form-container {
	background-color: rgba(255, 255, 255, 0.1);
	padding: 30px 40px;
	border-radius: 10px;
	width: 100%;
	max-width: 400px;
	backdrop-filter: blur(10px);
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
}

.form-container h2 {
	text-align: center;
	margin-bottom: 25px;
	color: #fff;
}

.form-container input {
	width: 100%;
	padding: 10px;
	margin: 10px 0 20px;
	border: none;
	border-radius: 5px;
}

.form-container input[type="text"], .form-container input[type="email"],
	.form-container input[type="password"] {
	background-color: #f4f4f4;
}

.form-container input[type="submit"] {
	background-color: #2ecc71;
	color: #fff;
	font-weight: bold;
	cursor: pointer;
	font-size: 15px;
	transition: background-color 0.3s ease;
}

.form-container input[type="submit"]:hover {
	background-color: #27ae60;
}

.form-container .login-link {
	text-align: center;
	margin-top: 15px;
	color: #fff;
}

.form-container .login-link a {
	color: #fff;
	text-decoration: underline;
}

.form-container   .logo {
	display: block;
	margin: 0 auto 20px; /* center and add spacing below */
	max-width: 120px; /* you can adjust size */
	height: auto;
	border-radius: 10px; /* optional: rounded corners */
}
</style>

<%
String status = request.getParameter("status");
if ("success".equals(status)) {
%>
<script>
	alert("Login Successfully!");
</script>
<%
} else if ("fail".equals(status)) {
%>
<script>
	alert("Login Failed. Try Again!");
</script>
<%
}
%>


</head>
<body>

	<div class="form-container">

		
		<h2>Youth Login</h2>
		<form action="/Youth_Policy/youth/login" method="post">

			<input type="email" name="email" placeholder="Email" required>
			<input type="password" name="password" placeholder="Password"
				required> <input type="submit" value="Login">
		</form>
		<div class="login-link">
			<p>
				Don't have an account? <a href= "/Youth_Policy/youth/register">Register here</a>
			</p>
		</div>


	</div>

</body>
</html>
