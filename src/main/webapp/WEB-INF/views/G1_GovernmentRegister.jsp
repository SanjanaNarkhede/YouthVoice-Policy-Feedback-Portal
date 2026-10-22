<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>YouthVoice: Add Officer</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
        .back-btn {
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <h3 class="text-success mb-4 text-center">Add New Government Official</h3>
    <form action="afterRegister" method="post">
        <div class="form-group">
            <label>Contact</label>
            <input type="text" class="form-control" name="contactId" required>
        </div>
        <div class="form-group">
            <label>Name</label>
            <input type="text" class="form-control" name="name" required>
        </div>
        <div class="form-group">
            <label>Email</label>
            <input type="email" class="form-control" name="email" required>
        </div>
        <div class="form-group">
            <label>Password</label>
            <input type="password" class="form-control" name="password" required>
        </div>
        <div class="form-group">
            <label>Department</label>
            <input type="text" class="form-control" name="department" required>
        </div>
        <button type="submit" class="btn btn-success">Add Government Official</button>
    </form>

    <a href="#"><button class="btn btn-secondary back-btn">Back</button></a>
</div>

</body>
</html>
