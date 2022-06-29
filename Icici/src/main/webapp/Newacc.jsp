<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New User Registration</title>
<style>
form
{
color:white;
}
input[type="text"]
{
align="center";
margin-right=20px;
</style>
</head>
<body>
<center>
<table><img src="4.png" width="1000px">
<h1 style="color:lavender">BEST BANK</h1></td></tr>
<a href="Home.jsp">Home</a>&emsp;
<a href="Newacc.jsp">New Account</a>&emsp;
<a href="Bal.jsp">Balance</a> &emsp;&emsp;
<a href="Depo.jsp">Deposit</a> &emsp;&emsp;
<a href="With.jsp">WithDraw</a> &emsp;&emsp;
<a href="Trans.jsp">Transfer</a>&emsp;&emsp;
<a href="Close.jsp">Close Account</a>&emsp;&emsp;
<a href="About.jsp">About Us</a><p></p>
<h2>Account Opening form</h2>
<form action="Newacode.jsp" method="post">
User Name:<input type="text" name="name"><p></p>
Password:<input type="password" name="pwd"><p></p>
Re Password:<input type="password" name="pwd1"><p></p>
Amount:<input type="text" name="amt"><p></p>
Address:<textarea rows="2"  name="Add"></textarea><p></p>
Phone:<input type="tel" name="phn"><p></p>
Account No:<input type="text" name="accno"><p></p>
<input type="submit" value="Submit">
<input type="reset" value="Clear">
</form>
</table>
</center>
</body>
</html>