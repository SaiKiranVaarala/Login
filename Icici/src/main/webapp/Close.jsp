<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<table><img src="4.png" width="1000px">
<h1 style="color:lavender">BEST BANK</h1>
<a href="Home.jsp">Home</a>&emsp;
<a href="Newacc.jsp">New Account</a>&emsp;
<a href="Bal.jsp">Balance</a> &emsp;&emsp;
<a href="Depo.jsp">Deposit</a> &emsp;&emsp;
<a href="With.jsp">WithDraw</a> &emsp;&emsp;
<a href="Trans.jsp">Transfer</a>&emsp;&emsp;s
<a href="Close.jsp">Close Account</a>&emsp;&emsp;
<a href="About.jsp">About Us</a><p></p>
<h2>Account Closing Form</h2>
<form action="Closeacc.jsp" method="post">
Account No:<input type="text" name="ano"><p></p>
User Name:<input type="text" name="name"><p></p>
Password:<input type="password" name="pwd"><p></p>
<input type="submit" value="Delete">&emsp;
<input type="reset" value="Clear">
</form>
</table>
</center>
</body>
</html>