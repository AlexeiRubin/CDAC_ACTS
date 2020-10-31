<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<jsp:useBean id="voterBean" class='com.app.beans.VoterBean'
	scope="session" />
<jsp:useBean id="candidateBean" class='com.app.beans.CandidateBean'
	scope="session" />
<body>
	<h5>${sessionScope.voterBean.message}</h5>
	<form action="validate.jsp" method="post">
		<table>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" /></td>
			</tr>

			<tr>
				<td><input type="submit" value="Login" /></td>
			</tr>
		</table>
	</form>
</body>
</html>