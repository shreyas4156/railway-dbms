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
.topright {
  position: absolute;
  top: 8px;
  right: 16px;
  font-size: 18px;
}
body{
	background:url("images/img6.jpg") no-repeat center fixed;
  background-size:cover;
  text-align:center;
  font-family:sans-serif;
}
</style>
<body><table bgcolor="#ffffcc"><tr><td><a href="AdminHome.jsp">

<img src="images/icon..png" alr="icon" style="width:50px;height:60px;"></td></a>
<td><h1>Railway Reservation System</h1></td>
</tr>
<td> <div class="topright">
<h2>
<%=session.getAttribute("userid") %>
<a style="color:blue;" href ="logout.jsp">log out</h2></a>
</div>
</table>
<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setDateHeader("Expires", 0);
if ((session.getAttribute("userid")== null) || (session.getAttribute("userid")== "")) {

	response.sendRedirect("timeout.htm");
	
  } else { if((session.getAttribute("userid")).equals("shreyas")){   %>	
<a color="blue" href="addtrain.jsp"><h1>Add Train</h1></a>
<a href="passengerlist.jsp"><h1>Full passenger List</h1></a>
<a href="search.jsp"><h1>Search Train</h1></a>
<a href="Enquire.jsp"><h1>Enquire PNR</h1></a>
 
<% }else response.sendRedirect("userlogin.jsp"); }%>
</body>
</html>