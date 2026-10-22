<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.r3sys.controller.model.P1_Policy"%>
<%@ page import="java.util.*, com.r3sys.controller.model.Y1_Youth"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YouthVoice: Send Feedback</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	padding: 40px;
	background-color: #f4f4f4;
}

.container {
	max-width: 600px;
	margin: auto;
	background: white;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
}

.back-btn {
	margin-top: 20px;
}
</style>
</head>
<body>
	<%
	Integer contactId = (Integer) request.getAttribute("contactId");
	%>
	<div class="container">
		<h3 class="text-success mb-4 text-center">Send Feedback</h3>
		<form action="sendFeedback" method="post">
			<div class="form-group">
				<label>Policy ID</label>
				<input type="text" class="form-control" name="policyId" required>
			</div>
			<div class="form-group">
				<label>Youth ID</label>
				<input type="text" class="form-control" name="youthContactId" required>
			</div>
			<div class="form-group">
				<label>Feedback Text</label> 
				<input type="text" class="form-control" name="feedback" required>
			</div>
			<div class="form-group">
				<label>Date</label> 
				<input type="date" class="form-control" name="date" required>
			</div>

			<button type="submit" class="btn btn-success">Send Feedback</button>
		</form>
		<a href="#"><button class="btn btn-secondary back-btn">Back</button></a>
	</div>
</body>
</html>
