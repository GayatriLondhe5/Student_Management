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
#btn{
    font-size:17px;
    padding:5px;
    background-color: gray;
    color: white;
    margin-top: 5px;
}
</style>
</head>
<body>
<div align="center">
<form action="add_student" method="get">
			<table border="1px solid">
				<tr>
					<td>Id</td>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>Mobile</td>
					<td><input type="text" name="mobile"></td>
				</tr>
			</table>
			<input type="submit" value="ADD" id="btn">
		</form>
	</div>
	<%
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
	<nav >
		 
		<a href="home.jsp">MAIN</a> <a
			href="get_student">STUDENT LIST</a>
	</nav>
	</div>
</body>
</html>