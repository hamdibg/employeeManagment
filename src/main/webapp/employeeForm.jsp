<%--
  Created by IntelliJ IDEA.
  User: Hamdi
  Date: 08/01/2025
  Time: 6:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .container {
            width: 60%;
            margin: auto;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"],
        input[type="email"],
        input[type="number"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .btn {
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-right: 10px;
        }
        .btn-primary {
            background-color: #4CAF50;
            color: white;
        }
        .btn-secondary {
            background-color: #808080;
            color: white;
            text-decoration: none;
            display: inline-block;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>${empty employee ? 'Add New Employee' : 'Edit Employee'}</h1>

    <form action="employee" method="post">
        <input type="hidden" name="action" value="${empty employee ? 'add' : 'update'}">
        <input type="hidden" name="id" value="${employee.id}">

        <div class="form-group">
            <label for="firstName">First Name:</label>
            <input type="text" id="firstName" name="firstName" value="${employee.firstName}" required>
        </div>

        <div class="form-group">
            <label for="lastName">Last Name:</label>
            <input type="text" id="lastName" name="lastName" value="${employee.lastName}" required>
        </div>

        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="${employee.email}" required>
        </div>

        <div class="form-group">
            <label for="salary">Salary:</label>
            <input type="number" id="salary" name="salary" value="${employee.salary}" step="0.01" required>
        </div>

        <div class="form-group">
            <button type="submit" class="btn btn-primary">
                ${empty employee ? 'Save' : 'Update'}
            </button>
            <a href="employee?action=list" class="btn btn-secondary">Cancel</a>
        </div>
    </form>
</div>
</body>
</html>
