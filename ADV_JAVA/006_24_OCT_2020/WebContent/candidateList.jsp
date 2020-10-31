<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Candidate List</title>
<body>
	<form action="voterStatus.jsp" method="post">
		<table>
			<tr>
				<td></td>
				<td>Candidate</td>
				<td>Party</td>
			</tr>
			<c:forEach var="candidate"
				items="${sessionScope.candidateBean.getCandidateList()}">
				<tr>
					<td><input type='radio' name='candidateId'
						value="${candidate.candidateId}"></td>
					<td>${candidate.candidateName}</td>
					<td>${candidate.candidatePoliticalParty}</td>
				</tr>
			</c:forEach>
		</table>
		<input type='submit' value='Vote'>
	</form>
</body>
</html>