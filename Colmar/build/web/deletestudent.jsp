<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM studreg WHERE id="+id);
response.sendRedirect("admin1.jsp"); 
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
