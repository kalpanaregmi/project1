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
String name=request.getParameter("name");
String queries=request.getParameter("queries");



try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
Statement st=conn.createStatement();



//int i=st.executeUpdate("insert into faculty(first_name,last_name,city_name,email)values('"+first_name+"','"+last_name+"','"+city_name+"','"+email+"')");

int i=st.executeUpdate("insert into studquery values(null,+'"+name+"','"+queries+"')");

response.sendRedirect("studentsendqueries.jsp");
}
catch(Exception e){
 
    out.println(e);

}



%>
