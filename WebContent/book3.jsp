<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>



        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Ticket</title>
    </head>
    <style>
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
  margin: 100px auto;
  font-family: Raleway;
  padding: 40px;
  width: 70%;
  min-width: 300px;
}</style>
    <body id="regForm" >
    <% 
    
response.setDateHeader("Expires", 0);
if ((session.getAttribute("userid")== null) || (session.getAttribute("userid")== "")) {
	response.sendRedirect("timeout.htm");
	
  }  else  if((request.getParameter("train_no")== null)){
    	 response.sendRedirect("search.jsp");}
    	 else { %>
<p><%session.getAttribute("userid");%></p>
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
<option value="window">Window</option>
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
<td><input type="text" value="AC 3<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>



        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Ticket</title>
    </head>
    <style>
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
  margin: 100px auto;
  font-family: Raleway;
  padding: 40px;
  width: 70%;
  min-width: 300px;
}</style>
    <body id="regForm" >
    <% 
    
response.setDateHeader("Expires", 0);
if ((session.getAttribute("userid")== null) || (session.getAttribute("userid")== "")) {
	response.sendRedirect("timeout.htm");
	
  }  else  if((request.getParameter("train_no")== null)){
    	 response.sendRedirect("search.jsp");}
    	 else { %>
<p><%session.getAttribute("userid");%></p>
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
<td><input type="text" value="AC 3" name="clss" readonly></td>
<td><h4>Fare: ₹.</h4></td>
<td><input type="text" value="<%=request.getParameter("fare3")%>" name="fare" readonly></td>


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
         </center> <%} %>
    </body>
</html>
" name="clss" readonly></td>
<td><h4>Fare: ₹.</h4></td>
<td><input type="text" value="<%=request.getParameter("fare3")%>" name="fare" readonly></td>


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
         </center> <%} %>
    </body>
</html>
