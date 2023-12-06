<%@page import="com.jspiders.studentmanagementsystem.object.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student_Management</title>
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
	margin-top: 10px;
}
nav a {
	color: white;
	text-decoration: none;
	padding: 10px;
	margin: 0 10px;
	display: inline-block;
}
th{
   font-family: Arial, fantsy;
   font-size:Bold;
	background-color: #e5f5f5;
	

}
</style>
</head>
<body>
<%
	@SuppressWarnings("unchecked")
	List<Student> students = (List<Student>) request.getAttribute("students");
	if (students != null && students.size() > 0) {
	%>
	<div align="center">
		<table border="1px solid">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Action1</th>
				<th>Action2</th>
			</tr>
			<%
			for (Student student : students) {
			%>
			<tr>

				<td><%=student.getId()%></td>
				<td><%=student.getName()%></td>
				<td><%=student.getEmail()%></td>
				<td><%=student.getMobile()%></td>
				<td><a href="delete_student?id=<%=student.getId()%>">DELETE</a></td>
				<td><a href="student_by_id?id=<%=student.getId()%>">UPDATE</a></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>
	<%
	} else {
	%>
	<div align="center">
		<h1>Students not found.</h1>
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
	<div align="center">
	<nav>
		 <a href="Add_Student.jsp">ADD STUDENT</a>
		<a href="home.jsp">MAIN</a> 
	</nav>
	</div>
</body>
</html>