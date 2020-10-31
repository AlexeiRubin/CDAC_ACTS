<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
</head>
<body>
	<h3>Yo, ${sessionScope.userDetails.username}</h3>

	<%
		session.invalidate();
	%>

	<br>
	<h3>Logged Out</h3>
	<br>
	<h2>
		<a href="index.jsp">LOGIN</a>
	</h2>
</body>
</html>