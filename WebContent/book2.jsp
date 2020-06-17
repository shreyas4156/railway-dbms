<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>



        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Ticket</title>
    </head>
    <style>
    .topright {
  position: absolute;
  top: 8px;
  right: 16px;
  font-size: 18px;
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
    * {
  box-sizing: border-box;
}
    #regForm {
  background-color: #E3E2DE;
 font-family:sans-serif;
}</style>
    <body id="regForm" >
    <% 

response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
response.setDateHeader("Expires", 0);
if ((session.getAttribute("userid")== null) || (session.getAttribute("userid")== "")) {
	response.sendRedirect("timeout.htm");
	
  }  else  if((request.getParameter("train_no")== null)){
    	 response.sendRedirect("search.jsp");}
    	 else {   
    	 if(request.getParameter("ac2").equals("0")){
    			out.println("<html>");
    			   out.println("<head>");
    			out.println("<title>MeterDetailsPage</title>");
    			out.println("</head>");
    			out.println("<body>");
    			   out.println("<table align='center' color='red'>");
    			   out.println("<tr color='red'>");
    			   out.println("<td ><font size=4 color=red >Tickets Not Available</font></td>");
    			   out.println("</tr>");
    			   out.println("<tr><td><a style='color:green' href='search.jsp'>back</a></td></tr>");
    			   out.println("</table>");
    			   out.println("</body>");
    			   out.println("</html>");
    			   }
    	 else{%>
<p><%session.getAttribute("userid");

String atime=request.getParameter("atime"); 
String dtime=request.getParameter("dtime");
%></p>
<table bgcolor="#ffffcc"><tr><td>

<img src="images/icon..png" alr="icon" style="width:50px;height:60px;"></td>
<td><h1>Railway Reservation System</h1></td><td></td>
<td><% if(session.getAttribute("userid").equals("shreyas"))
	
out.println("<a style='color:green' href='AdminHome.jsp'><b>Home</b></a>");
else 	out.println("<a style='color:green'  href='userlogin.jsp'><b>Home</b></a>");

%></td><td> <a style="color:green" href="search.jsp"><strong>Back</strong></a></td>

</tr>
<td> <div class="topright">
<h2>
<%=session.getAttribute("userid") %>
<a href ="logout.jsp">log out</h2></a>
</div>
</td>
</table>
<br><br><br>
<center>
<table border="1.1" width="60%" height="60%">
<form  method="post" action="bookconfirm.jsp">
<tr><th><font color='black'>S. No.</font></th>
  <th><font color='black'>Name</font></th>
  <th><font color='black'>Age</font></th>
  <th><font color='black'>Gender</font></th>
  <th><font color='black'>Berth Preference</font></th>
  <th><font color='black'>Senior Citizen</font></th>
  <th><font color='black'>AADHAAR No.(Optional)</font></th>
  </tr>
  
<tr>
<td><b><font color='blue'>1</font></b></td>
<td><b><font color='blue'><input type="text" name="name1" required/></font></b></td>
<td><b><font color='blue'><input type="text" name="age1" required/></font></b></td>
<td><b><font color='blue'><select name="gender1" required>
<option value="select">Select</option>
<option value="m">Male</option>
<option value="f">Female</option>
<option value="trans">Transgender</option>
</select></font></b></td>
<td><b><font color='blue'><select name="berth1">
<option value="no_preference">No Preference</option>
<option value="upper">Upper</option>
<option value="middle">Middle</option>
<option value="lower">Lower</option>
</select></font></b></td>
<td><b><font color='blue'><input type="checkbox" name="senior1" value="senior"/></font></b></td>
<td><b><font color='blue'><input type="text" name="aadhaar1" /></font></b></td>
</tr>
</table>
<br>
<table>
<tr><td><h4>Train name:</h4></td>
<td><input type="text" value="<%=request.getParameter("tname")  %>" name="tname" readonly></td>
<tr><td><h4>Train number:</h4></td>
<td><input type="text" value="<%=request.getParameter("train_no")  %>" name="train_no" readonly></td>
<td><h4>Class:</h4></td>
<td><input type="text" value="AC 2" name="clss" readonly></td>
<td><h4>Fare: ₹.</h4></td>
<td><input type="text" value="<%=request.getParameter("fare2")%>" name="fare" readonly></td>


</tr>
</table>

<table>
<div style="overflow:auto;">
    <div style="float:right;">
      <tr><td><button type="submit" id="prevBtn" >Submit</button></td>
      <td><button type="reset" id="nextBtn" >Reset</button></td></tr>
    </div>
    </table>    
        </form>
        
        <br><br><a href='logout.jsp'>Log out</a>
         </center> <%

         session.setAttribute("atime", atime);
     	session.setAttribute("dtime", dtime);
    	 } }%>
    </body>
</html>
