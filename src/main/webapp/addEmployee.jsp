<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            color: #333;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            width: 100%;
            max-width: 500px;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #007bff;
            margin-bottom: 20px;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .form-group input[type="submit"] {
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
            padding: 15px;
            border-radius: 5px;
        }
        .form-group input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h1>Sign Up</h1>
        <form:form modelAttribute="emp" action="savenewemployee">
            <div class="form-group">
                <label for="empname">Name:</label>
                <form:input path="empname" id="empname"/>
            </div>
            <div class="form-group">
                <label for="empmail">Email:</label>
                <form:input path="empmail" id="empmail"/>
            </div>
            <div class="form-group">
                <label for="contact">Contact:</label>
                <form:input path="contact" id="contact"/>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <form:input path="password" id="password"/>
            </div>
            <div class="form-group">
                <input type="submit" value="Save Employee"/>
            </div>
        </form:form>
    </div>

</body>
</html>
