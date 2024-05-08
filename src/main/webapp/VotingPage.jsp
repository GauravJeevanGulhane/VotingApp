<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="votecontroller.jsp" method="post">
	<label>Candidate 1:</label><input type="radio" name="candidate" value="candidate1">
	<label>Candidate 2:</label><input type="radio" name="candidate" value="candidate2">
	<label>Candidate 3:</label><input type="radio" name="candidate" value="candidate3">
	<label>Candidate 4:</label><input type="radio" name="candidate" value="candidate4">
	<input type="submit" value="Vote"> 
</form>
</body>
</html>