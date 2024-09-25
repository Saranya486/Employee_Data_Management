<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f7f6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        form {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 100%;
            max-width: 400px;
        }
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            color: #333;
            margin-bottom: 5px;
        }
        .form-group input {
            width: calc(100% - 20px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .form-group input:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s, transform 0.2s;
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }
        input[type="submit"]:focus {
            outline: none;
        }
    </style>
</head>
<body>
    <form:form modelAttribute="emp" action="savemployee">
        <div class="form-group">
            <label for="empname">NAME:</label>
            <form:input path="empname" id="empname"/>
        </div>
        <div class="form-group">
            <label for="empmail">EMAIL:</label>
            <form:input path="empmail" id="empmail"/>
        </div>
        <div class="form-group">
            <label for="contact">CONTACT:</label>
            <form:input path="contact" id="contact"/>
        </div>
        <div class="form-group">
            <label for="password">PASSWORD:</label>
            <form:input path="password" id="password"/>
        </div>
        <div class="form-group">
            <input type="submit" value="Submit"/>
        </div>
    </form:form>
</body>
</html>
