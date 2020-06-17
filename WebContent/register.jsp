<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String userid=request.getParameter("userid");	
String password=request.getParameter("password");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String age=request.getParameter("age");
String gender=request.getParameter("gender");
String email=request.getParameter("email");
String aadhar_no=request.getParameter("aadhar_no");
String mobile_no=request.getParameter("mobile_no");
String city=request.getParameter("city");
String state=request.getParameter("state");
String pincode=request.getParameter("pincode");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yucon", "root", "shreyas");
Statement st=conn.createStatement();
ResultSet rs= st.executeQuery("select * from users where userid='"+userid+"'");
 if(rs.next()){
	response.sendRedirect("registeruexisted.jsp");}
 else{try{
CallableStatement stmt=conn.prepareCall("{call add_user(?,?,?,?,?,?,?,?,?,?,?,?)}");
	 stmt.setString(1, userid);
	 stmt.setString(2, password);
	 stmt.setString(3, fname);
	 stmt.setString(4, lname);
	 stmt.setString(5, gender);
	 stmt.setString(6, age);
	 stmt.setString(7, email);
	 stmt.setString(8, aadhar_no);
	 stmt.setString(9, mobile_no);
	 stmt.setString(10, city);
	 stmt.setString(11, state);
	 stmt.setString(12, pincode);
	 stmt.execute();
	 
 }catch(Exception e){System.out.print(e);}
	 response.sendRedirect("regsucc.jsp");}
session.setAttribute("userid", userid); 
session.setAttribute("fname", fname);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>