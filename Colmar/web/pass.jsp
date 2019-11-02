<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    if("POST".equalsIgnoreCase(request.getMethod()))
    {
        if(request.getParameter("changePwd")!=null)
        {
            if(request.getParameter("changePwd").equals("Change Password"))
            {
                
                String passFP = request.getParameter("passFP");
                String repassFP = request.getParameter("repassFP");
                
                if((!passFP.isEmpty()) && (!repassFP.isEmpty()))
                {
                    if(passFP.equals(repassFP))
                    {
                        Connection con = null;
                        PreparedStatement ps;
                        ResultSet rs;
                        String query;
                        
                        try
                        {
                            Class.forName("com.mysql.jdbc.Driver");
                        }
                        catch(Exception e)
                        {
                            System.out.println(e);
                            
                        }
                        try
                        {
                            con = DriverManager.getConnection("jdbc:mysql://localhost/test", "root","root");
                            query = "select * from studreg where email=?";
                            ps = con.prepareStatement(query);
                            ps.setString(1, request.getParameter("uemail"));
                            
                            rs = ps.executeQuery();
                            
                            if(rs.next())
                            {
                                query = "update studreg set password=? where email=?";
                                ps = con.prepareStatement(query);
                                ps.setString(1,passFP);
                                ps.setString(2,request.getParameter("uemail"));
                                ps.executeUpdate();
                                out.println("<br> Password Changed Successfully... Please <a href=\"facullogin.jsp\"> Click Here </a> to login... <br>");
                            }
                            else
                            {
                                out.println("Invalid Credentials provided!!!!");
                            }

                        }
                        catch(SQLException e)
                        {
                            System.out.println(e);
                        }
                        
                        
                        
                        
                    }
                }
            }
        }
    }
    
    
%>

<!DOCTYPE html>
<html>
<head>
     <link rel="stylesheet" href="css/style.css" type="text/css">
<title>COLMARS ACADEMY</title>
</head>
<body>
<img src="logo1.jpg" height="50" width="50" style="float:left;margin:0;padding:20px 0 0 150px;"> 
<div id="container">
<div id="header">

<h1><span class="blue-text">COLMARS</span> ACADEMY</h1>
<h2>TAKE YOUR FIRST LEAP<span class="white-text">TOWARDS SUCCESS</span></h2>
</div><!--header end-->
<div id="menu">
				<ul>
					 <li class="menu item"><a href="home.jsp">Home</a></li>
					 <li class="menu item"><a href="aboutus.jsp">About Us</a></li>
					 <li class="menu item"><a href="contactus.jsp">Contact Us</a></li>
				</ul>
			</div><!--menu end-->
			<div id="leftmenu">
				<h3>Links</h3>
				<ul>
					<li class="menuitem"><a href="finalstudlogin.jsp">STUDENT LOGIN</a></li>
				<li class="menuitem"><a href="facullogin.jsp">FACULTY LOGIN</a></li>
				<li class="menuitem"><a href="adminlogin.jsp">ADMIN LOGIN</a></li>
				<li class="menuitem"><a href="celebratedevents.jsp">CELEBRATED EVENTS</a></li>
				<li class="menuitem"><a href="upcomingevents.jsp">UPCOMING EVENTS</a></li>
				<li class="menuitem"><a href="feesstructure.jsp">FEES STRUCTURE</a></li>

				</ul>
			</div><!--leftmenu end-->
<div id="content">
		
<form action="" method="post">
            <input type="password" name="passFP" placeholder="Enter your new Password" size="50">
            <br><br>
            <input type="password" name="repassFP" placeholder="Re-Enter your new Password" size="50">
            <br><br> 
            <input type="text" name="uemail" placeholder="email" size="50">
            <br><br> 
            <input type="submit" name="changePwd" value="Change Password">
        </form>


	
</div><!--content1 ends-->


</div>
</body>
</html>