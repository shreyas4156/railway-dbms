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
 else{
int i=st.executeUpdate("insert into users(userid,password,fname,lname,gender,age,email,aadhar_no,mobile_no,city,state,pincode)values('"+userid+"','"+password+"','"+fname+"','"+lname+"','"+gender+"','"+age+"','"+email+"','"+aadhar_no+"','"+mobile_no+"','"+city+"','"+state+"','"+pincode+"');");
response.sendRedirect("regsucc.jsp");}
session.setAttribute("userid", userid); 
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>