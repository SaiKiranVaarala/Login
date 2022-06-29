<%@ page import="java.sql.*"%>
<table border="1">
<%
String username= request.getParameter("name");
String password=request.getParameter("pwd");
int accountno=Integer.parseInt(request.getParameter("ano"));
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bankdb", "sai90");
	PreparedStatement ps = con.prepareStatement("select * from acc where username=? and password=? and accountno=?");
	ps.setString(1,username);
	ps.setString(2,password);
	ps.setInt(3,accountno);	
	ResultSet rs=ps.executeQuery();
	ResultSetMetaData r=rs.getMetaData();
	int n= r.getColumnCount();
	
	
for(int i=1;i<=n;i++)

			out.println("<td> <font color=blue size=3>"+"<br>"+r.getColumnName(i));
			out.println("<tr>");
	while(rs.next())
	{
		for(int i=1;i<=n; i++)
		
		out.println("<td><br>"+rs.getString(i));
		out.println("<tr>");
		
	}
	out.println("</table>");
}
catch (Exception e) {
	out.print(e);
}
%>
