<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link href="StyleSheet.css" rel="stylesheet" type="text/css">
<style>
body{
	background-image:url("images/img6.jpg");
	 background-repeat: no-repeat;
	-webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: fit;
  text-align:center;
}
</style>
<body>
<% 
response.setDateHeader("Expires", 0);
if ((session.getAttribute("userid")== null) || (session.getAttribute("userid")== "")) {

	response.sendRedirect("timeout.htm");
	
  } else { %>	
<a color="blue" href="addtrain.jsp"><h1>Add Train</h1></a>
<a href="passengerlist.jsp"><h1>Full passenger List</h1></a>
<a href="search.jsp"><h1>Search Train</h1></a>
<a href="Enquire.jsp"><h1>Enquire PNR</h1></a>
<a href="cancel.jsp"><h1>Cancel Ticket</h1></a>
<a href ="logout.jsp"><h1>log out</h1></a> 
<% } %>
</body>
</html>