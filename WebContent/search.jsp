<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
response.setDateHeader("Expires", 0);
if ((session.getAttribute("userid")== null) || (session.getAttribute("userid")== "")) {
	response.sendRedirect("timeout.htm");
	
  }  else {%>
<center>
  <h1> SEARCH TRAINS</h1>
 	
  <form action="search1.jsp">
<table border="1">
<tr>
<td> Source:  	 <select name="source" required >
<option value="">Select</option>
<option value="banglore">banglore</option>
<option value="karwar">karwar</option>
<option value="delhi">delhi</option>
<option value="mangalore">mangalore</option>
<option value="chennai">chennai</option>
<option value="hyderabad">hyderabad</option>
</select>

<br> <br>
 </td>
</tr>
<tr>
<td> Destination:  	 <select name="destination"  required>
<option value="">Select</option>
<option value="banglore">banglore</option>
<option value="karwar">karwar</option>
<option value="delhi">delhi</option>
<option value="mangalore">mangalore</option>
<option value="chennai">chennai</option>
<option value="hyderabad">hyderabad</option>
</select>
<br> 

<br>
 </td>
</tr>
<tr>
<td> Date:<input type="date" name="date" required><br> <br>
 </td>
</tr>
<tr>
<td>
<input type="submit" value="search"> <br> <br>
</td>
</tr>
</table>
</form>
</center>

<% } %>
</body>
</html>