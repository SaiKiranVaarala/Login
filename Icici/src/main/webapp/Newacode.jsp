<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Account</title>
</head>
<body>
<%
String username=request.getParameter("name");
String password=request.getParameter("pwd");
String repassword=request.getParameter("pwd1");
String amount=request.getParameter("amt");
String address=request.getParameter("Add");
String phone=request.getParameter("phn");
int accountno=Integer.parseInt(request.getParameter("accno"));
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bankdb","sai90");
	String l=("insert into acc values(?,?,?,?,?,?)");
	PreparedStatement ps= con.prepareStatement(l);
	ps.setString(1,username);
	ps.setString(2,password);
	ps.setString(3,amount);
	ps.setString(4,address);
	ps.setString(5,phone);
	ps.setInt(6,accountno);
	if(password.equals(repassword))
	{
	int i=ps.executeUpdate();
	out.println(i+"Account Created");
	con.close();
	}
	else
	{
		out.print("Given password and re entered password are not same");
	}
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>