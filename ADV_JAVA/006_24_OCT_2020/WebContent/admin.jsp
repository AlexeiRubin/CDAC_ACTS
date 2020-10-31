<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<body>
	<h2>Hello, ${sessionScope.voterBean.voterEntity.voterName}</h2>
	<br>
	<h3>TOP CANDIDATES:</h3>
	<br>
	<table>
		<tr>
			<th>Name</th>
			<th>Votes</th>
		</tr>
		<c:forEach var="candidate"
			items="${sessionScope.candidateBean.topCandidates}">
			<tr>
				<td>${candidate.candidateName}</td>
				<td>${candidate.candidateVotes}</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<h3>Party-Wise Analysis:</h3>
	<br>
	<table>
		<tr>
			<th>Party</th>
			<th>Votes</th>
		</tr>
		<c:forEach var="candidate"
			items="${sessionScope.candidateBean.partyVotes}">
			<tr>
				<td>${candidate.candidatePoliticalParty}</td>
				<td>${candidate.candidateVotes}</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<h2>
		<a href="login.jsp">LOGOUT</a>
	</h2>

	<%
		session.invalidate();
	%>

</body>
</html>