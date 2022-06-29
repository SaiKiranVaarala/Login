<%@ page import="java.sql.*"%>
<%
String accountno=request.getParameter("ano");
String username=request.getParameter("name");
String password=request.getParameter("pwd");
String amount=request.getParameter("amt");
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bankdb","sai90");
	PreparedStatement ps=con.prepareStatement("update  acc set amount=amount-? where accountNo=? and amount>?");
	ps.setString(1,amount);
	ps.setString(2,accountno);
	ps.setString(3,amount);
	int i=ps.executeUpdate();
	out.print(i+"amount updated");
	con.close();
}
catch(Exception ex)
{
	out.print(ex);
}
%>