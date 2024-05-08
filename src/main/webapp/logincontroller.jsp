<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Repositeries.Repositer" %>
<%@page import="Models.VoterModel" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
Repositer repo=new Repositer();
VoterModel model=repo.getVoter(request.getParameter("username"));
if(request.getParameter("password").equals(model.getPassword())&&model!=null)
{
	HttpSession ses=request.getSession();
	ses.setAttribute("username", model.getUsername());
	RequestDispatcher r=request.getRequestDispatcher("VotingPage.jsp");
	r.forward(request, response);
}
else
{
	RequestDispatcher r=request.getRequestDispatcher("Loginpage.jsp");
	r.include(request, response);
	out.println("<h1>Failed to Log in </h1>");
}	
%>
</body>
</html>