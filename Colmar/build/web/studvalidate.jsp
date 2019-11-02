<%-- 
    Document   : faculvalidate
    Created on : 27 Jul, 2019, 10:57:27 AM
    Author     : DELL
--%>

<%@ page import ="java.sql.*" %>
<%
    try{
        String username = request.getParameter("username");  
        String password = request.getParameter("password");
       // out.println("entered username is "+username);
      //  out.println("entered password is "+password);
        String  dbu="",dbp="";
        int id=0;
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");    
        PreparedStatement pst = conn.prepareStatement("Select id,username,password from studreg where username= '"+username+"'");
       // pst.setString(1, username);
       // pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        while(rs.next())       	
        {
            id=rs.getInt("id");
            dbu=rs.getString("username");
            dbp=rs.getString("password");
           
        
        }   
        
       // out.println("id is"+id);
       // out.println("dbu is "+dbu);
       // out.println("dbp is "+dbp);
        
        if((dbu.equals(username))&&(password.equals(dbp))){
            
            //response.sendRedirect("faculchgpass.jsp");
             session.setAttribute("userId", id);
            response.sendRedirect("student1.jsp");
           // out.println("Correct Password");
        
        }
        
        else {
        
            
        out.println("InCorrect Password");
        }
        
        
   }
   catch(Exception e){   	
   	out.println("Something went wrong !! Please try again"); 
out.println(e);         
   }      
%>
