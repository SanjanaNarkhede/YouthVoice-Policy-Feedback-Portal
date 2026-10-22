<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.r3sys.controller.model.Y1_Youth"%>
<%@ page import="com.r3sys.controller.dao.Y1_YouthDao"%>

<%@ page import="org.springframework.context.ApplicationContext"%>
<%@ page
	import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="webapp/resources/css/index.css">
<meta charset="UTF-8">
<title>YouthVoice: View Youth</title>

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

	<h2 class="text-success">Youth User</h2>

	<table class="table table-bordered table-striped">
		<thead>
			<tr>
				<th>Contact ID</th>
				<th>Name</th>
				<th>Age</th>
				<th>Email</th>
				
			</tr>
		</thead>
		<tbody>
			<%
			ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
			Y1_YouthDao youthDao = context.getBean("youthDao", Y1_YouthDao.class);
			List<Y1_Youth> userlist = youthDao.getAllUser();
			if (userlist != null && !userlist.isEmpty()) {
				for (Y1_Youth user : userlist) {
			%>
			<tr>
				<td><%=user.getContactId()%></td>
				<td><%=user.getName()%></td>
				<td><%=user.getAge()%></td>
				<td><%=user.getEmail()%></td>		
			</tr>
			<%
			}
			} else {
			%>
			<tr>
				<td colspan="6" style="text-align: center;"
					class="text-center text-danger">No Officer available.</td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
<a href="#"><button class="back-btn">Back</button></a>
</body>
</html>