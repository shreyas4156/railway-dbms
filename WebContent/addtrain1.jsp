<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
int p[]=new int[100];
response.setDateHeader("Expires", 0);
if ((session.getAttribute("userid")== null) || (session.getAttribute("userid")== "")) {
	response.sendRedirect("timeout.htm");
	
  }  else {
  String a1="ac1";
  String a2="ac2";
  String a3="ac3";
  String a4="economic";
  String a5="sleeper";
  String tno=request.getParameter("tno");
  String tname=request.getParameter("tname");
  String source=request.getParameter("source");
  String destination=request.getParameter("destination");
  String dist=request.getParameter("dist");
  String atime=request.getParameter("atime");
  String dtime=request.getParameter("dtime");
  String sun=request.getParameter("day1");
  String mon=request.getParameter("day2");
  String tue=request.getParameter("day3");
  String wed=request.getParameter("day4");
  String thur=request.getParameter("day5");
  String fri=request.getParameter("day6");
  String sat=request.getParameter("day7");
  String sleeper=request.getParameter("sleeper");
  String economic=request.getParameter("economic");
  String ac1=request.getParameter("ac1");
  String ac2=request.getParameter("ac2");
  String ac3=request.getParameter("ac3");
  String sleeperf=request.getParameter("sleeperf");
  String economicf=request.getParameter("ecof");
  String ac1f=request.getParameter("ac1f");
  String ac2f=request.getParameter("ac2f");
  String ac3f=request.getParameter("ac3f");
  try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yucon", "root", "shreyas");
Statement st=conn.createStatement();
ResultSet rs= st.executeQuery("select * from train where train_no='"+tno+"'");
if(rs.next()){
	out.println("<html>");
   out.println("<head>");
out.println("<title>MeterDetailsPage</title>");
out.println("</head>");
out.println("<body>");
   out.println("<table align='center' color='red'>");
   out.println("<tr color='red'>");
   out.println("<td ><font size=4 color=red >Train Already Exist</font></td>");
   out.println("</tr>");
   out.println("</table>");
   out.println("</body>");
   out.println("</html>");
   }
else{
	int i=st.executeUpdate("insert into train values('"+tno+"','"+tname+"','"+atime+"','"+dtime+"','"+source+"','"+destination+"','"+dist+"');")	;
	int j=st.executeUpdate("insert into class values('"+tno+"','"+sleeper+"','"+economic+"','"+ac1+"','"+ac2+"','"+ac3+"');");
	int k=st.executeUpdate("insert into fare values('"+tno+"','"+a1+"','"+ac1f+"')");
	int l=st.executeUpdate("insert into fare values('"+tno+"','"+a2+"','"+ac2f+"')");
	int m=st.executeUpdate("insert into fare values('"+tno+"','"+a3+"','"+ac3f+"')");
	int n=st.executeUpdate("insert into fare values('"+tno+"','"+a5+"','"+sleeperf+"')");
	int o=st.executeUpdate("insert into fare values('"+tno+"','"+a4+"','"+economicf+"')");
	
	try{
	if(sun!=null)	
	p[0]=st.executeUpdate("insert into train_date values('"+tno+"','"+sun+"')");
	
	 
	
	if(mon!=null){
	p[1]=st.executeUpdate("insert into train_date values('"+tno+"','"+mon+"')");}
	
	
	if(tue!=null){
	p[2]=st.executeUpdate("insert into train_date values('"+tno+"','"+tue+"')");}
	else p[2]=0;
	
	
	if(wed!=null){
	p[3]=st.executeUpdate("insert into train_date values('"+tno+"','"+wed+"')");}
	
	if(thur!=null){
	p[4]=st.executeUpdate("insert into train_date values('"+tno+"','"+thur+"')");}
	
	if(fri!=null){
	p[5]=st.executeUpdate("insert into train_date values('"+tno+"','"+fri+"')");}
	
	if(sat!=null){
	p[6]=st.executeUpdate("insert into train_date values('"+tno+"','"+sat+"')");}
	
	}
	catch(Exception e){
		System.out.println(e);
	}
	response.sendRedirect("AdminHome1.jsp");
}}
  catch(Exception e)
  {
  System.out.print(e);
  e.printStackTrace();
  }
  
  }
 %>
</body>
</html>