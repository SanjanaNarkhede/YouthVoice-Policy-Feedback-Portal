<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>YouthVoice: Add Policy</title>
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
    <h3 class="text-success mb-4 text-center">Add Policy</h3>
    <form action="addPolicy" method="post">
        <div class="form-group">
            <label>Title</label>
            <input type="text" class="form-control" name="title" required>
        </div>
        <div class="form-group">
            <label>Description</label>
            <input type="text" class="form-control" name="description" required>
        </div>
        <div class="form-group">
            <label>Date</label>
            <input type="date" class="form-control" name="publishDate" required>
        </div>
        
        <button type="submit" class="btn btn-success">Add Policy</button>
    </form>

    <a href="#"><button class="btn btn-secondary back-btn">Back</button></a>
</div>

</body>
</html>
