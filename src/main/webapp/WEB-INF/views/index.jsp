

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>YouthVoice</title>
    <style>
      body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom right, #114357, #F29492);
           
            margin: 0;
            padding: 0;
        }


        header {
            background: linear-gradient(to bottom right, #0a0f2c, #1e2746);
            color: white;
            padding: 20px 0;
            text-align: center;
        }

        .container {
        		
            display: flex;
            justify-content: center;
            gap: 40px;
            
        }

        .card {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 30px 40px;
            border-radius: 10px;
            width: 250px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            text-align: center;
            transition: transform 0.2s;
            backdrop-filter: blur(10px);
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
            margin-top: 80px;
        }

       

        .card h2 {
        		color:	#12343b;
            margin-bottom: 15px;
        }

        .card a {
            display: inline-block;
            padding: 10px 20px;
            background: linear-gradient(to bottom right, #0a0f2c, #1e2746);
            color: white;
            text-decoration: none;
            border-radius: 6px;
            margin-top: 10px;
        }

        .card a:hover {
        		transform: translateY(-5px);
            background-color: #0056b3;
        }

        footer {
        		background: linear-gradient(to bottom right, #0a0f2c, #1e2746);
            text-align: center;
            padding: 20px;
            margin-top: 80px;
            background-color: #eee;
        }
        footer 
        {
        		color: white;
        }
    </style>
</head>
<body>

    <header>
        <h1>Welcome to Youth Voice Government Policy Portal</h1>
        <p>ISP Complaint Management Software Enables You to Respond to Customer Complaints</p>
        
    </header>

    <div class="container">
        <div class="card">
            <h2>Admin</h2>           
          	<p>Add Government Officer, View Officer, View Youth, Add Policy, Manage Policy</p>
            <a href="/Youth_Policy/loginadmin">Login as Admin</a>
        </div>
        
        <div class="card">
            <h2>Government Officer</h2>
            <p>View Feedback, Respond to Suggestion</p>
            <a href="/Youth_Policy/government/loginGovernment">Login as Government Officer</a>
        </div>

        <div class="card">
            
            <h2>Youth</h2>
         	<p>View Policy, Give Feedback</p><br>
            <a href="/Youth_Policy/youth/loginYouth">Login as Youth</a>
        </div>

    </div>

    <footer>
        &copy; 2025 ISPCRM Complaint Management. All rights reserved.
    </footer>

</body>
</html>