<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log In</title>
<link rel="stylesheet" href="style.css" type="text/CSS">
</head>
<body>
<form action="logincontroller.jsp" method="post">
		<input type="text" placeholder="Username" name="username">
		<input type="password" placeholder="Password" name="password">
		<input type="submit" value="Log In" >
	</form>
	<a href="RegisterPage.jsp">Register Page</a>
</body>
</html>