<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Management System</title>
</head>
<body>
<%
    String contextPath = request.getContextPath();
    response.sendRedirect(contextPath + "/employee?action=list");
%>
</body>
</html>