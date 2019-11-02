<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String cityname=request.getParameter("std");
String email=request.getParameter("email");
String std=request.getParameter("std");
String phoneno=request.getParameter("pnoneno");
String address=request.getParameter("address");
String pastmarks=request.getParameter("pastmarks");
String pastschool=request.getParameter("pastschool");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into studadm values(null,+'"+firstname+"','"+lastname+"','"+std+"','"+email+"','"+phoneno+"','"+address+"','"+pastmarks+"','"+pastschool+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>