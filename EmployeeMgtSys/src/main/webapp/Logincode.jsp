 <%@ page import="java.sql.*" %>
 
 <%
 String email=request.getParameter("mail");
 String password=request.getParameter("pwd");
 try
 {
 	Class.forName("oracle.jdbc.driver.OracleDriver");
 	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sai","2204");
 	PreparedStatement ps=con.prepareStatement("select * from userreg where email=? and password=?");
 	ps.setString(1,email);
 	ps.setString(2,password);
 	ResultSet rs=ps.executeQuery();
if(rs.next())
{
	response.sendRedirect("userhome.jsp");
}
else
{
	out.print("Please Enter Valid Credentials");
}
con.close();
 }
 catch(Exception e)
 {
	 out.print(e);
 }
%>
</body>
</html>