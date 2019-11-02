<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/test";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String id = request.getParameter("id");
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String address=request.getParameter("address");
String email=request.getParameter("email");
String phoneno=request.getParameter("phoneno");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update studreg set id=?,firstname=?,lastname=?,email=?,phoneno=?,address=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, firstname);
ps.setString(3, lastname);
ps.setString(4, email);
ps.setString(5, phoneno);
ps.setString(6, address);
int i = ps.executeUpdate();
if(i > 0)
{
response.sendRedirect("admin1.jsp");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>