<%@ page import="java.sql.*"%>
<%
String password = request.getParameter("pwd");
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "sai", "2204");
	PreparedStatement ps = con.prepareStatement("delete from userreg where password=?");
	ps.setString(1, password);
	int i = ps.executeUpdate();
	out.print(i + " record has been deleted");
	con.close();
} 
catch (Exception e)
{
	out.print(e);
}
%>
