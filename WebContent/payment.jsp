<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%  
    response.setHeader ("Pragma", "no-cache");
    response.setHeader ("Cache-Control", "no-cache");
    response.setHeader ("Cache-Control", "no-store");
    response.setDateHeader ("Expires", System.currentTimeMillis());      
     
    
    
    response.setDateHeader("Expires", 0);
    if ((session.getAttribute("userid")== null) || (session.getAttribute("userid")== "")) {
    	response.sendRedirect("timeout.htm");
    	
      }  else if((session.getAttribute("name1")== null)){
    	 response.sendRedirect("search.jsp");}
    	 else
    	 {
    	  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<form action="http://paytm.com/">
<tr>
<td><h3>Card Number:</h3></td>
<td><input type="number" name="cno" required> </td>
</tr>
<tr>
<td><h3>Pin Number:</h3></td>
<td><input type="number" name="pin" required> </td>
</tr>
<tr>
<td><h3>Bank:</h3></td>
<td><input type="text" name="bank" required> </td>
</tr>
<tr>
<td>
<button type="submit">Pay</button>
</td>
</tr>
</form>
</table>
</body>
</html>
<%} %>