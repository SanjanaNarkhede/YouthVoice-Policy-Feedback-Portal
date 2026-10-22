<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.r3sys.controller.model.P1_Policy"%>
<%@ page import="java.util.*, com.r3sys.controller.model.Y1_Youth"%>
<%@ page import="com.r3sys.controller.dao.P1_PolicyDao"%>

<%@ page import="org.springframework.context.ApplicationContext"%>
<%@ page
	import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>YouthVoice: View Policy</title>

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

	<h2 class="text-success">View Policy</h2>

	<table class="table table-bordered table-striped">
		<thead>
			<tr>
				<th>ID</th>
				<th>Title</th>
				<th>Description</th>
				<th>PublishDate</th>
				<th>Send Feedback</th>
			</tr>
		</thead>
		<tbody>
			<%
			
			    

				ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
				P1_PolicyDao policyDao = context.getBean("policyDao", P1_PolicyDao.class);
				List<P1_Policy> policylist = policyDao.getAllPolicy();
				if (policylist != null && !policylist.isEmpty()) {
					for (P1_Policy policy : policylist) {
			%>
			<tr>
				<td><%=policy.getId()%></td>
				<td><%=policy.getTitle()%></td>
				<td><%=policy.getDescription()%></td>
				<td><%=policy.getPublishDate()%></td>
				<td>
					<form action="feedbackform" method="post">
    					<button type="submit">Send Feedback</button>
  					</form>
  				</td>
			</tr>
			<%
		    		}
			} else {
			%>
			<tr>
				<td colspan="6" style="text-align: center;"
					class="text-center text-danger">No Policy available.</td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
<a href="/Youth_Policy/index"><button class="back-btn">Back</button></a>
</body>
</html>