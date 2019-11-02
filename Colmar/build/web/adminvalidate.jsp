<%-- 
    Document   : adminvalidate
    Created on : 29 Jul, 2019, 12:29:04 PM
    Author     : DELL
--%>


<%@ page import ="java.sql.*" %>
<%
  String str1=request.getParameter("name");
  String str2=request.getParameter("password");
 
  if(str1.equalsIgnoreCase("admin") && str2.equals("admin"))
  {
    	response.sendRedirect("admin1.jsp");  
  }
  else
  {
        response.sendRedirect("adminlogin.jsp"); 
  }
%>