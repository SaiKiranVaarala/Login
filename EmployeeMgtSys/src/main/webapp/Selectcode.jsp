<%@ page import="java.sql.*"%>
<table border="1">
<%
String name = request.getParameter("name");
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "sai", "2204");
	PreparedStatement ps = con.prepareStatement("select * from userreg where name=?");
	ps.setString(1, name);
	ResultSet rs=ps.executeQuery();
	ResultSetMetaData r=rs.getMetaData();
	int n= r.getColumnCount();
	
for(int i=1;i<=n;i++)

			out.println("<td> <font color=blue size=3>"+"<br>"+r.getColumnName(i));
			out.println("<tr>");
	while(rs.next())
	{
		for(int j=1;j<=n; j++)
		
		out.println("<td><br>"+rs.getString(j));
		out.println("<tr>");
		
	}
	out.println("</table>");
}
catch (Exception e) {
	out.print(e);
}
%>
