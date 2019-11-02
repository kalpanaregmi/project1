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
String username=request.getParameter("username");
String email=request.getParameter("emailaddress");
String phonenumber=request.getParameter("phoneno");
String password=request.getParameter("password");
String confirmpassword=request.getParameter("confirmpassword");


try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
Statement st=conn.createStatement();



//int i=st.executeUpdate("insert into faculty(first_name,last_name,city_name,email)values('"+first_name+"','"+last_name+"','"+city_name+"','"+email+"')");

int i=st.executeUpdate("insert into facultyreg values(null,+'"+firstname+"','"+lastname+"','"+username+"','"+email+"','"+phonenumber+"','"+password+"','"+confirmpassword+"')");

response.sendRedirect("facullogin.jsp");
}
catch(Exception e){
 
    out.println(e);

}



%>
