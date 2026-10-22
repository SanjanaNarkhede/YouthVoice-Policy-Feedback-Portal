<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.r3sys.controller.model.F1_FeedBack"%>
<%@ page import="com.r3sys.controller.dao.F1_FeedBackDao"%>

<%@ page import="org.springframework.context.ApplicationContext"%>
<%@ page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="webapp/resources/css/index.css">
<meta charset="UTF-8">
<title>YouthVoice: View Feedback</title>

<style>
table {
	width: 100%;
	border-collapse: collapse;
	background-color: #ffffff;
	box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
	margin-top: 20px;
	border-radius: 8px;
	overflow: hidden;
	font-family: 'Segoe UI', sans-serif;
}

table th, table td {
	padding: 12px 15px;
	text-align: center;
	border-bottom: 1px solid #e0e0e0;
}

table thead {
	background-color: #1abc9c;
	color: white;
	font-weight: bold;
}

table tr:hover {
	background-color: #f2f2f2;
}

button {
	padding: 6px 12px;
	background-color: #e74c3c;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

button:hover {
	background-color: #c0392b;
}

.back-btn {
	margin-top: 20px;
	background-color: #3498db;
}

.back-btn:hover {
	background-color: #2980b9;
}
</style>

</head>
<body>

	<h2 class="text-success">View Feedback</h2>

	<table class="table table-bordered table-striped">
		<thead>
			<tr>
				<th>ID</th>
				<th>Policy ID</th>
				<th>Youth ID</th>
				<th>Feedback</th>
				<th>Date</th>
				<th>Give Suggestion</th>
			</tr>
		</thead>
		<tbody>
			<%
			ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
			F1_FeedBackDao feedbackDao = context.getBean("feedBackDao", F1_FeedBackDao.class);
			List<F1_FeedBack> feedbacklist = feedbackDao.getAllFeedback();
			if (feedbacklist != null && !feedbacklist.isEmpty()) {
				for (F1_FeedBack feedback : feedbacklist) {
			%>
			<tr>
				<td><%=feedback.getId()%></td>
				<td><%=feedback.getPolicyId()%></td>
				<td><%=feedback.getYouthContactId()%></td>
				<td><%=feedback.getFeedbackText()%></td>
				<td><%=feedback.getDate()%></td>
  				<td>
					<form action="respondSuggestion" method="post">
						<input type="hidden" name="id" value="<%=feedback.getId()%>">
    						<button type="submit">Suggestion</button>
  					</form>
  				</td> 
  	
				
			</tr>
			<%
			}
			} else {
			%>
			<tr>
				<td colspan="6" style="text-align: center;"
					class="text-center text-danger">No Feedback available.</td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
<a href="/Youth_Policy/index"><button class="back-btn">Back</button></a>
</body>
</html>