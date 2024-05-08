<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
<link rel="stylesheet" href="style.css" type="text/CSS">
</head>
<body>
	<form action="registercontroller.jsp" method="post">
		<input type="text" placeholder="Username" name="username">
		<input type="password" placeholder="Password" name="password">
		<input type="text" placeholder="Email" name="email">
		<input type="number" placeholder="Phone no" name="phno">
		<input type="submit" value="Register" >
	</form>
	<a href="Loginpage.jsp">Log In</a>
</body>
</html>