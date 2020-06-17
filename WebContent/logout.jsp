<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>logged out</title>
</head>
<body style="background:url("images/img2.jpg")no-repeat center fixed;
  background-size:cover;
  font-family:sans-serif;")>
<% session.invalidate();
response.sendRedirect("index.htm"); %>
<p> You have been successfully logout</p>
</body>
</html>