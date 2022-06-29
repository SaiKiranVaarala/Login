<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String name=request.getParameter("name");
String password=request.getParameter("pwd");
if(name.equals("admin") && password.equals("admin"))
{
	response.sendRedirect("Adminhome.jsp");
}
else
	response.sendRedirect("wrong.jsp");
%>