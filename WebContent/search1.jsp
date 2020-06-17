<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*,java.text.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search</title>
</head>
<style>


body{
	
	 background-repeat: no-repeat;
	-webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: fit;
  text-align:center;
  font-family:sans-serif;
}
  button {
  background-color: #4CAF50;
  color: #ffffff;
  border: none;
  padding: 10px 20px;
  font-size: 17px;
  font-family: Raleway;
  cursor: pointer;
}

button:hover {
  opacity: 0.8;
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
  #regForm {
  background-color: #E3E2DE;
  margin: 10px auto;
  font-family: Raleway;
  
  width: 100%;
  min-width: 300px;
}
</style>
<% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setDateHeader("Expires", 0);
if ((session.getAttribute("userid")== null) || (session.getAttribute("userid")== "")) {
	response.sendRedirect("timeout.htm");
	
  }  else { %>
<body id="regForm" style="font-family:sans-serif">
<table bgcolor="#ffffcc"><tr><td>

<img src="images/icon..png" alr="icon" style="width:50px;height:60px;"></td>
<td><h1>Railway Reservation System</h1></td><td></td>
<td><% if(session.getAttribute("userid").equals("shreyas"))
	
out.println("<a style='color:green' href='AdminHome.jsp'><b>Home</b></a>");
else 	out.println("<a style='color:green'  href='userlogin.jsp'><b>Home</b></a>");

%></td><td> <a style="color:green" href="search.jsp"><strong>Back</strong></a>
</tr>
<td> <div class="topright">
<h2>
<%=session.getAttribute("userid") %>
<a href ="logout.jsp">log out</h2></a>
</div>
</table>
<center>

<% 

  
  String source=request.getParameter("source");
  String destination=request.getParameter("destination");
   String dtime=request.getParameter("dtime");
   String atime=request.getParameter("atime");
  String date=request.getParameter("date");
  String class1=request.getParameter("class");

  SimpleDateFormat format1=new SimpleDateFormat("yyyy-MM-dd");
  java.util.Date dt1=format1.parse(date);
  DateFormat format2=new SimpleDateFormat("EEEE"); 
  String finalDay=format2.format(dt1);
  try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yucon", "root", "shreyas");
Statement st=conn.createStatement();
Statement st1=conn.createStatement();
Statement st2=conn.createStatement();
Statement st3=conn.createStatement();
Statement st4=conn.createStatement();
Statement st5=conn.createStatement();
Statement st6=conn.createStatement();
ResultSet rs= st.executeQuery("select t.*,td.day from train as t,train_date as td where t.source='"+source+"' and t.destination='"+destination+"' and t.train_no=td.train_no and td.day='"+finalDay+"' ");
ResultSet rs1=st1.executeQuery("select * from class where train_no in(select train_no from train where source='"+source+"' and destination='"+destination+"' )");
ResultSet rs2=st2.executeQuery("select * from fare where class='ac1' and train_no in(select train_no from train where source='"+source+"' and destination='"+destination+"' )");
ResultSet rs3=st3.executeQuery("select * from fare where class='ac2' and train_no in(select train_no from train where source='"+source+"' and destination='"+destination+"' )");
ResultSet rs4=st4.executeQuery("select * from fare where class='ac3' and train_no in(select train_no from train where source='"+source+"' and destination='"+destination+"' )");
ResultSet rs5=st5.executeQuery("select * from fare where class='sleeper' and train_no in(select train_no from train where source='"+source+"' and destination='"+destination+"' )");
ResultSet rs6=st6.executeQuery("select * from fare where class='economic' and train_no in(select train_no from train where source='"+source+"' and destination='"+destination+"' )");

while(rs.next() && rs1.next() && rs2.next()&& rs3.next()&& rs4.next()&& rs5.next()&& rs6.next()) {
%>
<form  method ="post">
 <table bgcolor=#ffffcc border="1" width="30%" cellpadding="5">
	  <tr><td>Train number</td><td><input type="text" value="<%=rs.getString("train_no")%>" name="train_no" readonly="readonly"></td></tr>
	  <tr><td>Train name</td><td><input type="text" value="<%=rs.getString("train_name")%>" name="tname" readonly="readonly"></td></tr>
	  <tr><td>Source</td><td><input type="text" value="<%=rs.getString("source")%>" name="source" readonly="readonly"></td></tr>
	  <tr><td>Destination</td><td><input type="text" value="<%=rs.getString("destination")%>" name="destination" readonly="readonly"></td></tr>
	   <tr><td>Arrival time</td><td><input type="text" value="<%=rs.getString("arrival_time")%>" name="atime" readonly="readonly"></td></tr>
	   <tr><td>Departure time</td><td><input type="text" value="<%=rs.getString("departure_time")%>" name="dtime" readonly="readonly"></td></tr>
		<tr><td>Date</td><td><input type="text" value="<%=request.getParameter("date") %>" name="date" readonly="readonly"></td></tr>
		
		 <br><br><br>
  </table>
  
	  
	  <table  cellpadding="3"	>
	  
	  <tr><td>Ac 1- </td><td> <input type="text" value="<%=rs1.getString("ac1")%>" name="ac1" readonly="readonly"></td>
	  <td>Ac 2- </td><td> <input type="text" value="<%=rs1.getString("ac2")%>" name="ac2" readonly="readonly"></td>
	  <td>Ac 3- </td><td> <input type="text" value="<%=rs1.getString("ac3")%>" name="ac3" readonly="readonly"></td>
	  <td>Sleeper- </td><td> <input type="text" value="<%=rs1.getString("sleeper")%>" name="sleeper" readonly="readonly"></td>
	  <td>Economic- </td><td> <input type="text" value="<%=rs1.getString("economic")%>" name="economic" readonly="readonly"></td>
	  </tr>
	  <tr>
	    
	    
	    
	  <td>fare in Rs </td><td> <input type="text" value="<%=rs2.getString("fare")%>" name="fare1" readonly="readonly"></td>
	  <td>fare in Rs </td><td> <input type="text" value="<%=rs3.getString("fare")%>" name="fare2" readonly="readonly"></td>
	  <td>fare in Rs </td><td> <input type="text" value="<%=rs4.getString("fare")%>" name="fare3" readonly="readonly"></td>
	  <td>fare in Rs </td><td> <input type="text" value="<%=rs5.getString("fare")%>" name="fare4" readonly="readonly"></td>
	  <td>fare in Rs </td><td> <input type="text" value="<%=rs6.getString("fare")%>" name="fare5" readonly="readonly"></td>	  
	  </tr>
	  <tr><div style="overflow:auto;">
    <div style="float:right;">
    <td></td><td> <button type="submit" formaction='book1.jsp' >Book</button></td>
	   
	  <td></td><td><button type="submit" formaction='book2.jsp'>Book</button></td>
	  <td></td><td> <button type="submit"  formaction='book3.jsp'>Book</button></td>
	  <td></td><td> <button type="submit"  formaction='book4.jsp'>Book</button></td>
	  <td></td><td> <button type="submit" formaction='book5.jsp'>Book</button></td>
	  </tr>
	  <br><br><br>
	  </table>
	  </form>
	  <% } 


if(rs.first()==true && rs1.first()==true && rs2.first()==true && rs3.first()==true)
{
	%><br><br><br><%
	out.println("<h3>THESE ARE THE TRAINS AVAILABLE TO BOOK</h3>");
	session.setAttribute("date", date);
	session.setAttribute("source", source);
	session.setAttribute("destination", destination);
	
}
else
{
	  response.sendRedirect("searcherror.jsp");
}
}


catch(Exception e)
{
	
	System.out.print(e);
	e.printStackTrace();
}
  }

%>
<br><br><br>
<br>
<br>
<a href="search.jsp">Search other trains</a>
</center>
</body>
</html>