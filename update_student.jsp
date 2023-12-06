<%@page import="java.util.List"%>
<%@page import="com.jspiders.studentmanagementsystem.object.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
body {
	font-family: Arial, fantsy;
	background-color: #f5f5f5;
	margin: 0;
	padding: 0;
}
nav {
	background-color: #666;
	color: white;
	text-align: center;
	padding: 15px;
}
nav a {
	color: white;
	text-decoration: none;
	padding: 10px;
	margin: 0 10px;
	display: inline-block;
}
</style>
<title>Student_Management</title>
</head>
<body>
<%
	Student student = (Student) request.getAttribute("student");
	if (student != null) {
	%>
	<div align="center">
		<form action="update_student" method="get">
			<table border="1px solid">
				<tr>
					<td>Id</td>
					<td><input type="text" name="id" value="<%=student.getId()%>"
						readonly="true"></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name"
						value="<%=student.getName()%>"></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email"
						value="<%=student.getEmail()%>"></td>
				</tr>
				<tr>
					<td>Mobile</td>
					<td><input type="text" name="mobile"
						value="<%=student.getMobile()%>"></td>
				</tr>
			</table>
			<input type="submit" value="UPDATE">
		</form>
	</div>
	<%
	}
	String message = (String) request.getAttribute("message");
	if (message != null) {
	%>
	<div align="center">
		<h1><%=message%></h1>
	</div>
	<%
	}
	%>
</body>
</html>