<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Repositeries.Repositer" %>
<%@page import="Models.VoterModel" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>controller</title>
</head>
<body>
<%
VoterModel model=new VoterModel();
model.setEmail(request.getParameter("email"));
model.setPassword(request.getParameter("password"));
model.setUsername(request.getParameter("username"));
model.setPhone(Long.parseLong(request.getParameter("phno")));
Repositer repo=new Repositer();
if(repo.IsRegister(model))
{
	RequestDispatcher r=request.getRequestDispatcher("Loginpage.jsp");
	r.forward(request, response);
}
else
{
	RequestDispatcher r=request.getRequestDispatcher("RegisterPage.jsp");
	r.include(request, response);
	out.println("<h1>Fail to Register </h1>");
}
%>
</body>
</html>