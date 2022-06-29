<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
</head>
<body bgcolor="F1E9E7">
<center>
<h1 style=color:"red">Employee Management System</h1>
<a href="Home.jsp">Home</a>&emsp;
<a href="About.jsp">About</a> &emsp;&emsp;
<a href="Contact.jsp">Contact</a> &emsp;&emsp;
<a href="Register.jsp">Register</a> &emsp;&emsp;
<a href="Login.jsp">Login</a>&emsp;&emsp;<p></p>
<h2> New Employee Registration Form</h2><p></p>
<table border="10px">
<form action="Registercode.jsp" method="post">
<tr><td>Name:<input type="text" name="Name"></td></tr>
<tr><td>Password:<input type="password" name="password"></td></tr>
<tr><td>Email:<input type="mail" name="email"></td></tr>
<tr><td>Mobile Number:<input type="text" name="mobilenumber"></td></tr>
<tr><td>Gender:<input type="radio" name="g" value="male">Male
<input type="radio" name="g" value="female">Female
</td></tr>
<tr><td>Address:<textarea name="add" col=5 row=5></textarea></td></tr>
<tr>
<td>
Country
<select name="con">
<option>--Select--</option>
<option>India</option>
<option>Pakistan</option>
<option>Australia</option>
<option>United States</option>
<option>United Kingdom</option>
</select>
</td>
</tr>
<tr><td><input type="submit" value="Register"></td></tr>
<tr><td><input type="reset"  value="Reset"></td></tr>
</form>
</table>
</body>
</html>