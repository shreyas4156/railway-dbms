<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*,java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Passenger details</title>
</head>
<style>body{
	background:url("images/img6.jpg") no-repeat center fixed;
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
 .topright {
  position: absolute;
  top: 8px;
  right: 16px;
  font-size: 18px;
}
</style>
<body>

 <% 
    
response.setDateHeader("Expires", 0);
if ((session.getAttribute("userid")== null) || (session.getAttribute("userid")== "")) {
	response.sendRedirect("timeout.htm");
	
  }  else {
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yucon", "root", "shreyas");
	  Statement st=conn.createStatement();
	  Statement st1=conn.createStatement();
	  try{
		  ResultSet rs=st.executeQuery("select * from passenger where pnr_no='"+request.getParameter("pno")+"'");
	  	  ResultSet rs1=st1.executeQuery("select * from train where train_no in(select train_no from passenger where pnr_no='"+request.getParameter("pno")+"')");
	  
	  while(rs.next() && rs1.next()){
	  
	  
	  %>
<table bgcolor="#ffffcc"><tr><td>

<img src="images/icon..png" alr="icon" style="width:50px;height:60px;"></td>
<td><h1>Railway Reservation System</h1></td><td></td><td></td>
<td><% if(session.getAttribute("userid").equals("shreyas"))
	
out.println("<a style='color:green' href='AdminHome.jsp'><b>Home</b></a>");
else 	out.println("<a style='color:green' href='userlogin.jsp'><b>Home</b></a>");
%>
 </td>
</tr>
<td> <div class="topright">
<h2>
<%=session.getAttribute("userid") %>
<a href ="logout.jsp">log out</h2></a>
</div>
</td>
</table><br><br>  
<center><form bgcolor="#fffdd0"><table bgcolor="#ffffcc"><tr><td>
<h1  >PASSENGER INFORMATION</h1></td></tr></table>
</form><br><br>
<form action="payment.jsp">
	<table border="1" bgcolor="#fffdd0" width="40%">
	<tr>
	<td><h3>Passenger Name:</h3></td>
	<td><input type="text" value="<%=rs.getString("name") %>" name="pname" readonly></td>
	</tr>
	<td><h3>PNR.no:</h3></td>
	<td><input type="text" value="<%=rs.getString("pnr_no") %>" name="pno" readonly></td>
	</tr>
	
	<td><h3>Age:</h3></td>
	<td><input type="text" value="<%=rs.getString("age") %>" name="age" readonly></td>
	</tr><tr>
	<td><h3>Gender:</h3></td>
	<td><input type="text" value="<%=rs.getString("gender") %>" name="sex" readonly></td>
	</tr><tr>
	<td><h3>Berth Preference:</h3></td>
	<td><input type="text" value="<%=rs.getString("preference") %>" name="berth" readonly> </td>
	</tr><tr>
	<td><h3>Aadhar:</h3></td>
	<td><input type="text" value="<%=rs.getString("aadhar_no") %>" name="aadhar" readonly></td>
	</tr>
	<tr>
	<td><h3>Class:</h3></td>
	<td><input type="text" value="<%=rs.getString("class") %>" name="clss" readonly></td>
	</tr>	<tr>
	<td><h3>Seat No:</h3></td>
	<td><input type="text" value="<%=rs.getString("seat_no") %>" name="clss" readonly></td>
	</tr><tr>
	<td><h3>Preference:</h3></td>
	<td><input type="text" value="<%=rs.getString("preference") %>" name="berth" readonly></td>
	</tr><tr>
	<td><h3>Train Name:</h3></td>
	<td><input type="text" value="<%=rs1.getString("train_name") %>" name="tname" readonly></td>
	</tr>
	<tr>
	<td><h3>Train number:</h3></td>
	<td><input type="text" value="<%=rs1.getString("train_no") %>" name="tno" readonly></td>
	</tr>
	<tr>
	<td><h3>Source:</h3></td>
	<td><input type="text" value="<%=rs1.getString("source") %>" name="src" readonly></td>
	</tr><tr>
	<td><h3>Destination:</h3></td>
	<td><input type="text" value="<%=rs1.getString("destination") %>" name="dst" readonly></td>
	</tr><tr>
	<td><h3>Date:</h3></td>
	<td><input type="text" value="<%=rs.getString("date") %>" name="date" readonly></td>
	</tr>
	<tr>
	<td><h3>Arrival Time:</h3></td>
	<td><input type="text" value="<%=rs1.getString("arrival_time") %>" name="atime" readonly></td>
	</tr><tr>
	<td><h3>Departure Time:</h3></td>
	<td><input type="text" value="<%=rs1.getString("departure_time") %>" name="dtime" readonly></td>
	</tr>
		</table>
		</form>
		</center>
		<%}
	  }
	  catch(Exception e){}
  }
	  %>
</body>
</html>