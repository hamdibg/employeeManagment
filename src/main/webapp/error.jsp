<%--
  Created by IntelliJ IDEA.
  User: Hamdi
  Date: 08/01/2025
  Time: 7:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
  <title>Error</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 20px;
    }
    .error-container {
      width: 60%;
      margin: auto;
      padding: 20px;
      background-color: #ffebee;
      border: 1px solid #ef5350;
      border-radius: 4px;
    }
    .btn {
      display: inline-block;
      padding: 8px 16px;
      text-decoration: none;
      background-color: #4CAF50;
      color: white;
      border-radius: 4px;
      margin-top: 10px;
    }
  </style>
</head>
<body>
<div class="error-container">
  <h2>Error</h2>
  <p>An error occurred while processing your request:</p>
  <p>${pageContext.exception.message}</p>
  <a href="employee?action=list" class="btn">Return to Employee List</a>
</div>
</body>
</html>

