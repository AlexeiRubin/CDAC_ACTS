<%@page import="com.app.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Validate</title>
</head>
<%!String validName = "lol";
	String validPassword = "lol";%>
<body>

	<%
		String name = request.getParameter("name");
	String password = request.getParameter("pass");

	if (name.equals(validName) && password.equals(validPassword)) {
		session.setAttribute("userDetails", new User(name, password));
		response.sendRedirect("details.jsp");
	} else {
	%>

	<h4>Invalid Credentials</h4>
	<br>
	<h3>
		<a href='login.jsp'>RETRY!</a>
	</h3>

	<%
		}
	%>
</body>
</html>