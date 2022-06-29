<%@ page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String password=request.getParameter("password");
String email=request.getParameter("email");
String mobilenumber=(request.getParameter("mobilenumber"));
String address=request.getParameter("address");
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "sai", "2204");
	PreparedStatement ps = con.prepareStatement("update userreg set password=?,email=?,mobilenumber=?,address=? where name=?");
	ps.setString(1,password);
	ps.setString(2,email);
	ps.setString(3,mobilenumber);
	ps.setString(4,address);
	ps.setString(5,name);
	int i=ps.executeUpdate();
	out.print(i+"record updated");
	con.close();
}
catch(Exception e)
{
	out.print(e);
}
%>