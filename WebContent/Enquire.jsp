<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ticket booked</title>
</head>
<style>
 .topright {
  position: absolute;
  top: 8px;
  right: 16px;
  font-size: 18px;
}
 button {
  background-color: #fffdd0;
  color: black;
  border: none;
  padding: 10px 20px;
  font-size: 17px;
  
  cursor: pointer;
}
body{
	background:url("images/img2.jpg")no-repeat center fixed;
  background-size:cover;
  font-family:sans-serif;
  text-align:center;
}
form input {
  border: none;
  background: transparent;
  border-bottom: 1px solid #fff;
  outline: none;
}
</style>
<body>
<table bgcolor="#ffffcc"><tr><td>

<img src="images/icon..png" alr="icon" style="width:50px;height:60px;"></td>
<td><h1>Railway Reservation System</h1></td><td></td><td></td>
<td><% if(session.getAttribute("userid").equals("shreyas"))
	
out.println("<a style='color:green' href='AdminHome.jsp'><b>Back</b></a>");
else 	out.println("<a style='color:green' href='userlogin.jsp'><b>Back</b></a>");
%>
 </td>
</tr>
<td> <div class="topright">
<h2>
<%=session.getAttribute("userid") %>
<a href ="logout.jsp">log out</h2></a>
</div>
</td>
</table>

<center>
<% 
response.setDateHeader("Expires", 0);
if ((session.getAttribute("userid")== null) || (session.getAttribute("userid")== "")) {
	response.sendRedirect("timeout.htm");
	
  } else {
	  
  try{	
  Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yucon", "root", "shreyas");
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery("select * from passenger where userid='"+session.getAttribute("userid")+"'");
while(rs.next()){
	if(rs.getString("pnr_no")==null)
		out.println("<h1>NO TICKETS BOOKED</h1>");
	 else { %>
	<br><br>
	<form method="post" action="bookedl.jsp">
	<table bgcolor="#fffdd0" border="1" width="30%" cellpadding="3">
	  <tr><td>PNR.no</td><td><input type="text" value="<%=rs.getString("pnr_no")%>" name="pno" readonly="readonly"></td></tr>
	  <tr><td>Passenger Name</td><td><input type="text" value="<%=rs.getString("name")%>" name="name" readonly="readonly"></td></tr>
	  <tr><td>Train number</td><td><input type="text" value="<%=rs.getString("train_no")%>" name="tno" readonly="readonly"></td></tr>
	  </table>
	  <table>
	  <tr>
	   <tr><td><button type="submit" id="prevBtn" >Print</button></td>
	   <td><button type="submit" id="prevBtn" formaction="cancel.jsp" >Cancel</button></td>
	   </tr>
	<br>
	</table>
	</form>
	
	<%
}}
  }
  catch(Exception e){}
  }
  %>
</center>
</body>
</html>