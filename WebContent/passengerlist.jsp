<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>
body{
	background-image:url("images/img1.jpg");
	 background-repeat: no-repeat;
	-webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: fit;
  text-align:center;
}
</style>
<% 
response.setDateHeader("Expires", 0);
if ((session.getAttribute("userid")== null) || (session.getAttribute("userid")== "")) {
	response.sendRedirect("timeout.htm");
	
  } else {
   try
    	  {
    		 
    	  Class.forName("com.mysql.jdbc.Driver");
    	  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yucon", "root", "shreyas");
    	  Statement st=conn.createStatement();
    	  ResultSet rs=st.executeQuery("select * from passenger");
    	 while(rs.next()){ %>
    	  
     <table bgcolor="white" border="1" width="30%" cellpadding="3">
	  <tr><td>PNR.no</td><td><input type="text" value="<%=rs.getString("pnr_no")%>" name="train_no" readonly="readonly"></td></tr>
	  <tr><td>Passenger Name</td><td><input type="text" value="<%=rs.getString("name")%>" name="tname" readonly="readonly"></td></tr>
  	  <tr><td>Age</td><td><input type="text" value="<%=rs.getString("train_no")%>" name="train_no" readonly="readonly"></td></tr>
	  <tr><td>Gender</td><td><input type="text" value="<%=rs.getString("gender")%>" name="tname" readonly="readonly"></td></tr>
    <tr><td>Seat Number</td><td><input type="text" value="<%=rs.getString("seat_no")%>" name="train_no" readonly="readonly"></td></tr>
	  <tr><td>Date</td><td><input type="text" value="<%=rs.getString("date")%>" name="tname" readonly="readonly"></td></tr>
    <tr><td>Class</td><td><input type="text" value="<%=rs.getString("class")%>" name="train_no" readonly="readonly"></td></tr>
	  <tr><td>Preference</td><td><input type="text" value="<%=rs.getString("preference")%>" name="tname" readonly="readonly"></td></tr>
    <tr><td>Aadhar Number</td><td><input type="text" value="<%=rs.getString("userid")%>" name="train_no" readonly="readonly"></td></tr>
  <%} }
  catch (Exception e){} 
  }%>
</body>
</html>