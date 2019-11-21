<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Example</title>
    </head>
    <body bgcolor="#E3E2DE" style="font-family:sans serif;">
     <center>
    <h1>Train Reservation System</h1>
    
        <form method="post" action="login.jsp">
            <center>
            <table bgcolor="#FCA014" border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="userid" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Yet Not Registered!! <a href="register.html">Register</a></td>
                    </tr>
                </tbody>
            </table>
            <h2 style="color:red;">Invalid Admin Password</h2>
            </center>
        </form>
    </body>
</html>
