<%--
  Created by IntelliJ IDEA.
  User: Hamdi
  Date: 08/01/2025
  Time: 6:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Management</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        .action-links a {
            margin-right: 10px;
            text-decoration: none;
        }
    </style>
</head>
<body>
<h2>Employee List</h2>
<p><a href="employeeForm.jsp">Add New Employee</a></p>

<table>
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Salary</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="employee" items="${employees}">
        <tr>
            <td>${employee.firstName}</td>
            <td>${employee.lastName}</td>
            <td>${employee.email}</td>
            <td>${employee.salary}</td>
            <td class="action-links">
                <a href="employee?action=edit&id=${employee.id}">Edit</a>
                <a href="employee?action=delete&id=${employee.id}"
                   onclick="return confirm('Are you sure you want to delete this employee?')">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
