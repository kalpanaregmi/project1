<%-- 
    Document   : process
    Created on : 20 Jul, 2019, 2:44:26 AM
    Author     : DELL
--%>
    <title>Inside Process.jsp</title>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*,java.util.*"%>

<%
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String std=request.getParameter("std");
String email=request.getParameter("email");
String username=request.getParameter("username");
String password=request.getParameter("password");
String confirmpassword=request.getParameter("confirmpassword");
String phoneno=request.getParameter("phoneno");
String address=request.getParameter("address");
String pastmarks=request.getParameter("pastmarks");
String pastschool=request.getParameter("pastschool");


try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
Statement st=conn.createStatement();



//int i=st.executeUpdate("insert into faculty(first_name,last_name,city_name,email)values('"+first_name+"','"+last_name+"','"+city_name+"','"+email+"')");

int i=st.executeUpdate("insert into studreg values(null,+'"+firstname+"','"+lastname+"','"+std+"','"+email+"','"+username+"','"+password+"','"+confirmpassword+"','"+phoneno+"','"+address+"','"+pastmarks+"','"+pastschool+"')");

response.sendRedirect("finalstudlogin.jsp");
}
catch(Exception e){
 
    out.println(e);

}



%>
