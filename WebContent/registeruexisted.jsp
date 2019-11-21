<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>new registration</title>
</head>
<body>
<form action="register.jsp" method="post">
<table>
<tr>
<td>
User ID :<input type="text" name="userid" required/>
</td>
</tr>
<tr>
<td>
Password :<input type="password" name="password" required />
</td></tr>
<tr>
<td>
First name :<input type="text" name="fname" required />
</td>
</tr>
<tr>
<td>
Last name :<input type="text" name="lname" required/>
</td>
</tr>
<tr>
<td>
Gender :<input type="text" name="gender" required/>
</td>
</tr>
<tr>
<td>
Age :<input type="number" name="age" required />
</td>
</tr>
<tr>
<td>
Email :<input type="email" name="email" required/>
</td>
</tr>
<tr>
<td>
Aadhar number :<input type="number" name="aadhar_no" required />
</td>
</tr>
<tr>
<td>
Mobile Number :<input type="number" name="mobile_no" required />
</td>
</tr>
<tr>
<td>
City :<input type="text" name="city" required/>
</td>
</tr>
<tr>
<td>
State :<input type="text" name="state" required/>
</td>
</tr>
<tr>
<td>
Pin Code :<input type="number" name="pincode" required />
</td>
</tr>
<tr>
<td>
<input type="submit" placeholder="submit"><br>
</td>
</tr>
</form>
</table>
<p><font size=4 color=red >Userid Already Exist</font></p>
</body> 
</html>