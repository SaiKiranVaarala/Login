<%@ page import="java.sql.*" %>
<%
String accountno=request.getParameter("ano");
String username=request.getParameter("name");
String password=request.getParameter("pwd");

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bankdb","sai90");
	PreparedStatement ps=con.prepareStatement("delete from acc where accountno=? and username=? and password=? ");
	ps.setString(1, accountno);
	ps.setString(2, username);
	ps.setString(3, password);
	int i=ps.executeUpdate();
	out.print("  Welcome  " +username+ "  your account no  " +accountno+ "  has closed  ");

	
		con.close();
	}
	

 catch(Exception ex)
 {
 out.print(ex);
 }
 %>