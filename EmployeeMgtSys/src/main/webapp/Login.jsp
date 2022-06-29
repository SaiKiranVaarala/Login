<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style type="text/css">
h1
{
font-color:"red";
}
</style>
</head>
<body bgcolor="#FCF3CF ">
<center>
<table border="1">
<form action="Logincode.jsp" method="post">
<h1>Employee Management System</h1>
<a href="Home.jsp">Home</a>&emsp;
<a href="About.jsp">About</a> &emsp;&emsp;
<a href="Contact.jsp">Contact</a> &emsp;&emsp;
<a href="Register.jsp">Register</a> &emsp;&emsp;
<a href="Login.jsp">Login</a>&emsp;&emsp;<p></p>
<h2>New Employee Login Here</h2>
<tr><td>Email:<input type="email" name="mail"></td></tr><p></p>
<tr><td>Password:<input type="password" name="pwd"></td></tr>
<tr><td><input type="submit" value="Login"></td></tr>
</form>
</table>
</center>
</body>
</html>