<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import= java.util.*,java.sql.* %>
    <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>bookek</title>
</head>
<body >
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
    
    else {
    	%><table><tr><td><h1 style="color:green;"> booking successfull</h1></td></tr>
    	<tr><td><a href="search.jsp">Back</a></td></tr></table>
    	<%
 	}
    	 %>
</body>
</html>