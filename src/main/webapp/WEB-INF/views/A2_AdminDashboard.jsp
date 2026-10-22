<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>YouthVoice: Admin Dashboard</title>
  <link rel="stylesheet" href="index.css"> 
  <style>
    
    .dashboard-container {
      background: white;
      padding: 40px;
      border-radius: 15px;
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
      width: 100%;
      max-width: 500px;
      text-align: center;
    }

    .dashboard-container h2 {
      margin-bottom: 30px;
      color: #2c3e50;
    }

    .dashboard-container .action-button {
      display: block;
      width: 100%;
      margin-bottom: 15px;
      padding: 12px;
      font-size: 16px;
      background-color: #3498db;
      color: white;
      border: none;
      border-radius: 8px;
      text-decoration: none;
      transition: background-color 0.3s ease;
    }

    .dashboard-container .action-button:hover {
      background-color: #2e86c1;
    }
  </style>
</head>
<body>
<center>
  <div class="dashboard-container">
    <h2>Welcome to Admin Dashboard</h2>

	<a href="/Youth_Policy/government/register" class="action-button">Add Officer</a>
    <a href="/Youth_Policy/government/viewOfficer" class="action-button">View Officer</a>
    <a href="/Youth_Policy/youth/viewUser" class="action-button">View Youth</a>
    <a href="/Youth_Policy/policy/policyForm" class="action-button">Add Policy</a>
    <a href="/Youth_Policy/policy/managePolicy" class="action-button">Manage Policy</a>  
</div>
</center>    
  

</body>
</html>



