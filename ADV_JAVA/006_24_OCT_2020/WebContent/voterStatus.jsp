<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Voter Status</title>
<jsp:setProperty property="*" name="candidateBean" />
<body>
	<h2>Hello,${sessionScope.voterBean.voterEntity.voterName}</h2>
	<br>
	<h4>${sessionScope.voterBean.voterStatus}</h4>
	<br> ${sessionScope.candidateBean.setCandidateVotes()}

	<h3>
		<a href="login.jsp">LOGOUT</a>
	</h3>

	<%
		session.invalidate();
	%>

</body>
</html>