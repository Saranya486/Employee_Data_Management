<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            text-align: center;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            max-width: 400px;
            width: 100%;
        }
        h1 {
            color: #333;
            margin-bottom: 20px;
        }
        a {
            display: inline-block;
            text-decoration: none;
            color: #fff;
            background-color: #007bff;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 16px;
            margin: 10px;
            transition: background-color 0.3s, transform 0.3s;
        }
        a:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }
        .welcome-message {
            font-size: 18px;
            color: #666;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Employee Data</h1>
      
        <a href="signup">Sign Up</a><br>
        <a href="login.jsp">Log In</a>
    </div>
</body>
</html>
    