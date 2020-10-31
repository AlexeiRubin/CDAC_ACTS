<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>
</head>
<body>
	<h3>User Details: ${requestScope.userDetails}</h3>
	<%
		session.setAttribute("userDetails", request.getAttribute("userDetails"));
	%>
	<br>
	<h3>
		<a href="logout.jsp">LOGOUT</a>
	</h3>
</body>
</html>