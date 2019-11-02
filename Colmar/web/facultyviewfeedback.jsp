<%-- 
    Document   : facultyviewfeedback
    Created on : 18 Jul, 2019, 12:27:40 AM
    Author     : dinesh
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "test";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	<table border="5" width="400">
<tr>
<td colspan="5"><b> NAME</b></td>
<td colspan="5"><b>QUERIES</b></td>



</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from studquery";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td colspan="5"><%=resultSet.getString("name") %></td>
<td colspan="5"><%=resultSet.getString("queries") %></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>		
</div><!--content1 ends-->


</div>

    </body>
</html>
