<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import= java.util.*,java.sql.* %>
    <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
    	String uid=(String) session.getAttribute("userid");
    	String cno=request.getParameter("cno");
    	String pin=request.getParameter("pin");
    	String bank=request.getParameter("bank");
    	String name=(String)session.getAttribute("name1");
    	
    	try{
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yucon", "root", "shreyas");
    		Statement st=conn.createStatement();
    		Statement st1=conn.createStatement();
    		int i=st.executeUpdate("insert into payment(userid,card_no,pin_no,bank) values('"+uid+"','"+cno+"','"+pin+"','"+bank+"')");
    		ResultSet r1=st1.executeQuery("select pnr_no from passenger where pname='"+name+"'");
    		while(r1.next()) {
    		
    
    

    
    
    %>

<center>
<h1>BOOKING DETAILS:</h1>
<form action="payment.jsp">
	<table border="1">
	<tr>
	<td><h3>Passenger Name:</h3></td>
	<td><input type="text" value="<%=request.getParameter("name1") %>" name="pname" readonly></td>
	</tr>
	<tr>
	<td><h3>PNR NO:</h3></td>
	<td><input type="text" value="<%=r1.getString("pnr_no") %>" name="pname" readonly></td>
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
		</form>
		</center>
<% 	}}
    	catch(Exception e){} } %>
</body>
</html>