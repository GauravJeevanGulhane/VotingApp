<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Models.VoteModel" %>
<%@page import="Repositeries.Repositer" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Repositer repo=new Repositer();
VoteModel model=new VoteModel();
model.setCandidate(request.getParameter("candidate"));
HttpSession ses=request.getSession();
model.setVote((String)ses.getAttribute("username"));
if(repo.IsAddVote(model))
{
	out.println("<h1>Vote Successfully</h1>");
	out.println("<a href:'AllVotes.jsp'>Get All votes</a>");
}
else
{
	out.println("<h1>Faild to Vote</h1>");
}
%>
</body>
</html>