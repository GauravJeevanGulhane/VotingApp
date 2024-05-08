<%@page import="Models.VoterModel"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Repositeries.Repositer" %>
<%@page import="Models.VoteModel" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All votes</title>
</head>
<body>
<table style="border: 1px black solid">
<tr>
<th style="border: 1px black solid">
Voter
</th>
<th style="border: 1px black solid">
Candidate
</th>
</tr>
<%
Repositer repo=new Repositer();
ArrayList<VoteModel>list=repo.getAllVotes();
for(VoteModel model:list)
{
	%>
	<tr>
	<td style="border: 1px black solid">
	<%=model.getVote() %>
	</td>
	<td style="border: 1px black solid">
	<%=model.getCandidate() %>
	</td>
	</tr>
	<%
}
%>
</table>
</body>
</html>