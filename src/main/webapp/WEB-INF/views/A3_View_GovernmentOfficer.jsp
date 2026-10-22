<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.r3sys.controller.model.G1_Government"%>
<%@ page import="com.r3sys.controller.dao.G1_GovernmentDao"%>

<%@ page import="org.springframework.context.ApplicationContext"%>
<%@ page
	import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="webapp/resources/css/index.css">
<meta charset="UTF-8">
<title>YouthVoice: View Officer</title>

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

	<h2 class="text-success">Government Officer</h2>

	<table class="table table-bordered table-striped">
		<thead>
			<tr>
				<th>Contact ID</th>
				<th>Name</th>
				<th>Department</th>
				<th>Email</th>
				<th>Action Delete</th>
			</tr>
		</thead>
		<tbody>
			<%
			ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
			G1_GovernmentDao governmentDao = context.getBean("governmentDao", G1_GovernmentDao.class);
			List<G1_Government> officerlist = governmentDao.getAllOfficer();
			if (officerlist != null && !officerlist.isEmpty()) {
				for (G1_Government officer : officerlist) {
			%>
			<tr>
				<td><%=officer.getContactId()%></td>
				<td><%=officer.getName()%></td>
				<td><%=officer.getDepartment()%></td>
				<td><%=officer.getEmail()%></td>
  				<td>
					<form action="deleteOfficer" method="post">
						<input type="hidden" name="contactId" value="<%=officer.getContactId()%>">
    						<button type="submit">Delete</button>
  					</form>
  				</td> 
  	
				
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
<a href="/Youth_Policy/index"><button class="back-btn">Back</button></a>
</body>
</html>