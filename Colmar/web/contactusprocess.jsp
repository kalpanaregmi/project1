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
String fullname=request.getParameter("fullname");
String email=request.getParameter("email");
String phoneno=request.getParameter("phoneno");
String bsttymcall=request.getParameter("besttymcall");
String subjectneeded=request.getParameter("subjectneeded");



try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
Statement st=conn.createStatement();



//int i=st.executeUpdate("insert into faculty(first_name,last_name,city_name,email)values('"+first_name+"','"+last_name+"','"+city_name+"','"+email+"')");

int i=st.executeUpdate("insert into contactus values(null,+'"+fullname+"','"+email+"','"+phoneno+"','"+bsttymcall+"','"+subjectneeded+"')");

response.sendRedirect("contactus.jsp");
}
catch(Exception e){
 
    out.println(e);

}



%>
