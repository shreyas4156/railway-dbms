<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Train</title>
</head>
<style>
.topright {
  position: absolute;
  top: 8px;
  right: 16px;
  font-size: 18px;
}
input[type=submit]:hover {
  background-color: #45a049;}
body {
  background:url("images/background1.jpg") no-repeat center fixed;
  background-size:cover;
  font-family:sans-serif;
  text-align:center;
}
</style>
<% 
response.setDateHeader("Expires", 0);
if ((session.getAttribute("userid")== null) || (session.getAttribute("userid")== "")) {
	response.sendRedirect("timeout.htm");
	
  }  else {%>
<body><table bgcolor="#ffffcc"><tr><td>

<img src="images/icon..png" alr="icon" style="width:50px;height:60px;"></td>
<td><h1>Railway Reservation System</h1></td>
<td></td><td></td>
<td><% if(session.getAttribute("userid").equals("shreyas"))
	
out.println("<a style='color:green' href='AdminHome.jsp'><b>Back</b></a>");
else 	out.println("<a href='userlogin.jsp'>Back</a>");
%>
 </td></tr>
<td> <div class="topright">
<h2>
<%=session.getAttribute("userid") %>
<a style="color:blue" href  ="logout.jsp" >log out</h2></a>
</div>
</table>
<br><br><br><br>
<center>
<table bgcolor="#ffffcc"><tr><td>
  <h1 style="color:black;" > SEARCH TRAINS</h1>
 	</td></tr></table><br><br><br>
  <form action="search1.jsp">
<table bgcolor="#fffdd0" border="1" width="30%" cellpadding="3">
<tr>
<td> Source:  	 <select name="source" required >
<option value="">Select</option>
<option value="banglore">banglore</option>
<option value="karwar">karwar</option>
<option value="delhi">delhi</option>
<option value="mangalore">mangalore</option>
<option value="chennai">chennai</option>
<option value="hydrabad">hyderabad</option>
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
<option value="hydrabad">hyderabad</option>
</select>
<br> 

<br>
 </td>
</tr>
<tr>
<td> Date:<input type="date" name="date" onload="getDate()" required><br> <br>
 </td>
</tr>
<tr>
<td>
<input type="submit" value="search"> <br> <br>
</td>
</tr>
</table>
</form>
<h2 style="color:red;">Train not found</h2>

</center>
<script type="text/javascript">
var today = new Date().toISOString().split('T')[0];
document.getElementsByName("date")[0].setAttribute('min', today);

</script>
<% } %>
</body>
</html>