<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Passenger List</title>
</head>
<style>
.topright {
  position: absolute;
  top: 8px;
  right: 16px;
  font-size: 18px;
}
body{
	background:url("images/img1.jpg")no-repeat center fixed;
  background-size:cover;
  
  font-family:sans-serif;
}
input[type=text] {
 
  background: transparent;
}
@media screen and (max-width:900px){
	 body {width: 50%;}
	 }
	 <% 
response.setDateHeader("Expires", 0);
if ((session.getAttribute("userid")== null) || (session.getAttribute("userid")== "")) {
	response.sendRedirect("timeout.htm");
	
  } else {  if((session.getAttribute("userid")).equals("shreyas")){%>
</style>
<body><table bgcolor="#ffffcc"><tr><td><a href="AdminHome.jsp">
<img src="images/icon..png" alr="icon" style="width:50px;height:60px;"></td></a>
<td><h1>Railway Reservation System</h1></td></td><td></td>
<td><% if(session.getAttribute("userid").equals("shreyas"))
	
out.println("<a style='color:green' href='AdminHome.jsp'><b>Back</b></a>");
else 	out.println("<a href='userlogin.jsp'>Back</a>");
%>
 </td>
</tr>
<td>
<div class="topright">
<h2>
<%=session.getAttribute("userid") %>
<a style="color:blue" href ="logout.jsp">log out</h2></a>
</td>
</div>
</table>
<br><br><br>
<%
   try
    	  {
    		 
    	  Class.forName("com.mysql.jdbc.Driver");
    	  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yucon", "root", "shreyas");
    	  Statement st=conn.createStatement();
    	  ResultSet rs=st.executeQuery("select * from passenger");
    	  %>
    	  <table bgcolor="#ffffcc" border="1" width="20%" cellpadding="6">
    	  <th>PNR.no</th>
	 <th>Passenger name</th>
	 <th>Age</th>
	 <th>Gender</th>
	 <th>Seat Number</th>
	 <th>Date</th>
	 <th>Class</th>
	 <th>Preference</th>
	 <th>Aadhar Number</th><%
	 while(rs.next()){ %>	  
     
     
    <tr>
	<td><input type="text" value="<%=rs.getString("pnr_no")%>" name="train_no" readonly="readonly"></td>
	<td><input type="text" value="<%=rs.getString("name")%>" name="tname" readonly="readonly"></td>
  	<td><input type="text" value="<%=rs.getString("train_no")%>" name="train_no" readonly="readonly"></td>
	<td><input type="text" value="<%=rs.getString("gender")%>" name="tname" readonly="readonly"></td>
    <td><input type="text" value="<%=rs.getString("seat_no")%>" name="train_no" readonly="readonly"></td>
	<td><input type="text" value="<%=rs.getString("date")%>" name="tname" readonly="readonly"></td>
    <td><input type="text" value="<%=rs.getString("class")%>" name="train_no" readonly="readonly"></td>
	<td><input type="text" value="<%=rs.getString("preference")%>" name="tname" readonly="readonly"></td>
    <td><input type="text" value="<%=rs.getString("userid")%>" name="train_no" readonly="readonly"></td></tr>
    <%} }
    catch (Exception e){} 
    }else response.sendRedirect("userlogin.jsp"); }%>
</body>
</html>