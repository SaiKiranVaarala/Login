<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
</head>
<body bgcolor="lavender">
<center>
<form action="Updatecode.jsp" method="post">
<h1>Employee Management System</h1>
<a href="Home.jsp">Home</a>&emsp;
<a href="About.jsp">About</a> &emsp;&emsp;
<a href="Contact.jsp">Contact</a> &emsp;&emsp;
<a href="Register.jsp">Register</a> &emsp;&emsp;
<a href="Login.jsp">Login</a>&emsp;&emsp;<p></p>
<h2 style="color:olive">Update Employee Record</h2>
<table border="1">
<tr><td>Enter Name:<input type="text" name="name"></td></tr>
<tr><td>Password:<input type="password" name="password"></td></tr>
<tr><td>Email:<input type="email" name="email"></td></tr>
<tr><td>Mobile Number:<input type="tel" name="mobilenumber"></td></tr>
<tr><td>Address:<textarea col="5" row="5" name="address"></textarea></td></tr>
<tr><td><input type="submit" value="Update">
<input type="reset"></td></tr>
</table>
</body>
</html>