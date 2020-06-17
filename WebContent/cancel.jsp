
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cancel ticket</title>
</head>
<style>
 .topright {
  position: absolute;
  top: 8px;
  right: 16px;
  font-size: 18px;
}
body{
	background:url("images/img3.jpg")no-repeat center fixed;
  background-size:cover;
  
  font-family:sans-serif;
}
    
</style>
<body>
<% 
response.setDateHeader("Expires", 0);
if ((session.getAttribute("userid")== null) || (session.getAttribute("userid")== "")) {
	response.sendRedirect("timeout.htm");
	
  }  else {	
  
   try
    	  {
    		int q[]=new int[10]; 
    	  Class.forName("com.mysql.jdbc.Driver");
    	  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yucon", "root", "shreyas");
    	  Statement st=conn.createStatement();
    	  Statement st1=conn.createStatement();
    	  Statement st2=conn.createStatement();
    	  Statement st3=conn.createStatement();
    	  Statement st4=conn.createStatement();
    	  Statement st5=conn.createStatement();
    	  Statement st6=conn.createStatement();
    	  Statement st7=conn.createStatement();
    	  Statement st8=conn.createStatement();
    	  
    	  ResultSet rs=st1.executeQuery("select * from passenger where pnr_no='"+request.getParameter("pno")+"' ");
    	  ResultSet rs1=st3.executeQuery("select ac1 from class where train_no in(select train_no from passenger where pnr_no='"+request.getParameter("pno")+"')");
    	  ResultSet rs2=st5.executeQuery("select ac2 from class where train_no in(select train_no from passenger where pnr_no='"+request.getParameter("pno")+"')");
    	  ResultSet rs3=st6.executeQuery("select ac3 from class where train_no in(select train_no from passenger where pnr_no='"+request.getParameter("pno")+"')");
    	  ResultSet rs4=st7.executeQuery("select sleeper from class where train_no in(select train_no from passenger where pnr_no='"+request.getParameter("pno")+"')");
    	  ResultSet rs5=st8.executeQuery("select economic from class where train_no in(select train_no from passenger where pnr_no='"+request.getParameter("pno")+"')");
    	  
    	  if(rs.first() )
    	  {
    		  try{
    		  if(rs.getString("class").equals("AC 1") && rs1.first() ){
    			
    			q[1]=st2.executeUpdate("update class set ac1="+rs1.getString("ac1")+" +1 where train_no in(select train_no from passenger where pnr_no='"+request.getParameter("pno")+"') ");  
    			  }
    			  if(rs.getString("class").equals("AC 2") && rs2.first()){
        			  
        			q[1]=st2.executeUpdate("update class set ac2="+rs2.getString("ac2")+"+1 where train_no in(select train_no from passenger where pnr_no='"+request.getParameter("pno")+"') ");  
        			  
    			  }
    			  if(rs.getString("class").equals("SLEEPER") && rs4.first() ){
    	    			
    	    			q[1]=st2.executeUpdate("update class set sleeper="+rs4.getString("sleeper")+" +1 where train_no in(select train_no from passenger where pnr_no='"+request.getParameter("pno")+"') ");  
    	    			  }if(rs.getString("class").equals("AC 3") && rs3.first() ){
    	    	    			
    	    	    			q[1]=st2.executeUpdate("update class set ac3="+rs3.getString("ac3")+" +1 where train_no in(select train_no from passenger where pnr_no='"+request.getParameter("pno")+"') ");  
    	    	    			  }if(rs.getString("class").equals("ECONOMIC") && rs5.first() ){
    	    	    	    			
    	    	    	    			q[1]=st2.executeUpdate("update class set economic="+rs5.getString("economic")+" +1 where train_no in(select train_no from passenger where pnr_no='"+request.getParameter("pno")+"') ");  
    	    	    	    			  } 
    			  }
    			  catch(Exception e){out.println(e);}
    		  int i=st.executeUpdate("delete from passenger where pnr_no='"+request.getParameter("pno")+"'");
    		  }
    		  
    		  
    		  
    	  }
    	  
    	  
    	  
    	  
    	  
    	  
    	  
    	  
    	  
    	  
    	  
    	  
    	  
    	  
   catch(Exception e){}
  }
%>
<table bgcolor="#ffffcc"><tr><td><a href="AdminHome.jsp">

<img src="images/icon..png" alr="icon" style="width:50px;height:60px;"></td></a>
<td><h1>Railway Reservation System</h1></td>
</tr>
<td> <div class="topright">
<h2>
<%=session.getAttribute("userid") %>
<a href ="logout.jsp">log out</h2></a>
</div>
</table>

<center>
<h1 style="color:green;">Your Ticket got Cancelled</h1>
<br><br><br>
<h2> <a style="color: blue"href="Enquire.jsp"> Back </a></h2>
</center>
</body>
</html>