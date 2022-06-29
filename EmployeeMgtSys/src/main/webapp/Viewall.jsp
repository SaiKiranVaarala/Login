<%@ page import="java.sql.*"%>
<h1>All Employee Details are</h1>
<table border="1">
<%
String name = request.getParameter("name");
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "sai", "2204");
	Statement stmt = con.createStatement();
	ResultSet rs=stmt.executeQuery("select * from userreg");
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
