
<%@page import="com.servlet.db.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
					<li class="menu item"><a href="faculty1.jsp">View Student</a></li>
					 <li class="menu item"><a href="facultyuploadmaterial.jsp">Upload Material</a></li>
					 <li class="menu item"><a href="facultydeletmaterial.jsp">Delet Material</a></li>
					<li class="menu item"><a href="facultyviewfeedback.jsp">View Feedback</a></li>
                                        <li class="menu item"><a href="facultysendemail.jsp">Send Email</a></li>
					 <li class="menu item"><a href="home.jsp">Logout</a></li>

				</ul>
			</div><!--leftmenu end-->
<div id="content">
		

 <center>
        <%!
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
        %>
         
        <table border="5">
            <tr>
                <th>ID</th><th><b>First Name</b></th><th><b>Last Name</b></th><th><b>File Name</b></th><th><b>File Path</b></th><th><b>Added Date</b></th><th><b>Download</b></th>
            </tr>
            <%
                con = DB.getConnection();
            String sql = "select * from employee";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
            %>
           
            <tr>
                <td><%=rs.getInt(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getTimestamp(6)%></td>
                <td><a href="DownloadServlet?fileName=<%=rs.getString(4)%>">Download</a></td>
                <td><a href="faculdeletmeterial.jsp?id=<%=rs.getString("id") %>"><button type="button" class="delete">Delete</button></a></td>
               
            </tr>
            <%
                }
            %>
            
        </table>
     <a href="facultyuploadmaterial.jsp">Home</a>
        
    </center>

	
</div><!--content1 ends-->



</body>
</html>