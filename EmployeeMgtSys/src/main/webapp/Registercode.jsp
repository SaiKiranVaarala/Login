<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String Name=request.getParameter("Name");
String password=request.getParameter("password");
String email=request.getParameter("email");
String mobilenumber=request.getParameter("mobilenumber");
String gender=request.getParameter("g");
String address=request.getParameter("add");
String country=request.getParameter("con");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sai","2204");
	String l=("insert into userreg values(?,?,?,?,?,?,?)");
	PreparedStatement ps= con.prepareStatement(l);
	ps.setString(1,Name);
	ps.setString(2,password);
	ps.setString(3,email);
	ps.setString(4,mobilenumber);
	ps.setString(5,gender);
	ps.setString(6,address);
	ps.setString(7,country);
	int i=ps.executeUpdate();
	out.println(1+"Row Updated");
	con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>