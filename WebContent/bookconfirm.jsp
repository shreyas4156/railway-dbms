<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
    
    <%  
    response.setHeader ("Pragma", "no-cache");
    response.setHeader ("Cache-Control", "no-cache");
    response.setHeader ("Cache-Control", "no-store");
    response.setDateHeader ("Expires", System.currentTimeMillis());      

    response.setDateHeader("Expires", 0);
    if ((session.getAttribute("userid")== null) || (session.getAttribute("userid")== "")) {
    	response.sendRedirect("timeout.htm");
    	
      }  else if((request.getParameter("name1")== null)){
    	 response.sendRedirect("search.jsp");
    	  
    	  
      }
      else{
    	  String uid=(String)session.getAttribute("userid");
    	  String tname = (String) request.getParameter("tname");
    	  String tno = (String) request.getParameter("train_no");
    	  String date = (String) session.getAttribute("date");
    	  String source = (String) session.getAttribute("source");
    	  String destination = (String) session.getAttribute("destination");
    	  String name1 =request.getParameter("name1");
    	  String name2=request.getParameter("name2");
    	  String name3=request.getParameter("name3");
    	  String age1=request.getParameter("age1");
    	  String age2=request.getParameter("ag2");
    	  String age3=request.getParameter("age3");
    	  String gender1=request.getParameter("gender1");
    	  String gender2=request.getParameter("gender2");
    	  String gender3=request.getParameter("gender3");
    	  String berth1=request.getParameter("berth1");
    	  String berth2=request.getParameter("berth2");
    	  String berth3=request.getParameter("berth3");
    	  String aadhar1=request.getParameter("aadhaar1");
    	  String aadhar2=request.getParameter("aadhaar2");
    	  String aadhar3=request.getParameter("aadhaar3");
    	  String fare1=request.getParameter("fare");
    	  String clss=request.getParameter("clss");
    	  
    	  try
    	  {
    		 
    	  Class.forName("com.mysql.jdbc.Driver");
    	  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yucon", "root", "shreyas");
    	  Statement st=conn.createStatement();
    	  int i=st.executeUpdate("insert into passenger(age,gender,name,train_no,date,class,preference,aadhar_no,userid) values('"+age1+"','"+gender1+"','"+name1+"','"+tno+"','"+date+"','"+clss+"','"+berth1+"','"+aadhar1+"','"+uid+"')");
    	 session.setAttribute("name1", name1);
     }
    	  catch(Exception e){}
      }
      
      
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirm</title>
</head>
<style>body{
	background-image:url("images/img6.jpg");
	 background-repeat: no-repeat;
	-webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: fit;
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
<center><form bgcolor="#fffdd0">
<h1  >PASSENGER INFORMATION</h1>
</form>
<form action="payment.jsp">
	<table border="1" bgcolor="#fffdd0" width="40%">
	<tr>
	<td><h3>Passenger Name:</h3></td>
	<td><input type="text" value="<%=request.getParameter("name1") %>" name="pname" readonly></td>
	</tr>
	
	<td><h3>Age:</h3></td>
	<td><input type="text" value="<%=request.getParameter("age1") %>" name="age" readonly></td>
	</tr><tr>
	<td><h3>Gender:</h3></td>
	<td><input type="text" value="<%=request.getParameter("gender1") %>" name="sex" readonly></td>
	</tr><tr>
	<td><h3>Berth Preference:</h3></td>
	<td><input type="text" value="<%=request.getParameter("berth1") %>" name="berth" readonly> </td>
	</tr><tr>
	<td><h3>Aadhar:</h3></td>
	<td><input type="text" value="<%=request.getParameter("aadhaar1") %>" name="aadhar" readonly></td>
	</tr>
	<tr>
	<td><h3>Train Name:</h3></td>
	<td><input type="text" value="<%=request.getParameter("tname") %>" name="tname" readonly></td>
	</tr>
	<tr>
	<td><h3>Train number:</h3></td>
	<td><input type="text" value="<%=request.getParameter("train_no") %>" name="tno" readonly></td>
	</tr>
	<tr>
	<td><h3>Source:</h3></td>
	<td><input type="text" value="<%=session.getAttribute("source") %>" name="src" readonly></td>
	</tr><tr>
	<td><h3>Destination:</h3></td>
	<td><input type="text" value="<%=session.getAttribute("destination") %>" name="dst" readonly></td>
	</tr><tr>
	<td><h3>Date:</h3></td>
	<td><input type="text" value="<%=session.getAttribute("date") %>" name="date" readonly></td>
	</tr>
	<tr>
	<td><h3>Arrival Time:</h3></td>
	<td><input type="text" value="<%=session.getAttribute("atime") %>" name="atime" readonly></td>
	</tr><tr>
	<td><h3>Departure Time:</h3></td>
	<td><input type="text" value="<%=request.getAttribute("dtime") %>" name="dtime" readonly></td>
	</tr>
		</table>
		<button type="submit" >Payment</button>
		</form>
		</center>
</body>
</html>