<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome User</title>
</head>
<link href="StyleSheet.css" rel="stylesheet" type="text/css">
<body>

<% 
response.setDateHeader("Expires", 0);
if ((session.getAttribute("userid")== null) || (session.getAttribute("userid")== "")) {
	%>
	you are not logged in <br>
  <a href="login.html"> please login </a>
  <%} else { %>	

Welcome <% session.getAttribute("userid"); %>
<a href="search.jsp"><h1>Search Train</h1></a>
<a href="Enquire.jsp"><h1>Enquire PNR</h1></a>
<a href="cancel.jsp"><h1>Cancel Ticket</h1></a>
<a href ="logout.jsp"><h1>log out</h1></a>
<% } %>
</body>
</html>
