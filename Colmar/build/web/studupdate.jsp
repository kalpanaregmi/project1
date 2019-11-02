<%-- 
    Document   : upcomingevents
    Created on : 16 Jul, 2019, 11:58:55 PM
    Author     : dinesh
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="css/style.css" type="text/css">
		<title>COLMARS ACADEMY</title>
    </head>
    <body>
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
					<li class="menu item"><a href="admin1.jsp">View Student</a></li>
					 <li class="menu item"><a href="viewfaculty.jsp">View FACULTY</a></li>
					 <li class="menu item"><a href="uploadmaterial.jsp">Upload Material</a></li>
					 <li class="menu item"><a href="deletmaterial.jsp">Delet Material</a></li>
					<li class="menu item"><a href="viewfeedback.jsp">View Feedback</a></li>
					 <li class="menu item"><a href="home.jsp">Logout</a></li>

				</ul>
			</div><!--leftmenu end-->
		</div>
		<div id="content">
                    <%
String id = request.getParameter("id");
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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from studreg where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update data from database in jsp</h1>
<form method="post" action="studupdate_process.jsp">
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br>
First name:<br>
<input type="text" name="firstname" value="<%=resultSet.getString("firstname") %>">
<br>
Last name:<br>
<input type="text" name="lastname" value="<%=resultSet.getString("lastname") %>">
<br>
Email Id:<br>
<input type="email" name="email" value="<%=resultSet.getString("email") %>"><br>
Phone No:<br>
<input type="text" name="phoneno" value="<%=resultSet.getString("phoneno") %>"><br>
Address:<br>
<input type="text" name="address" value="<%=resultSet.getString("address") %>">
<br><br>
<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
		</div>

    </body>
</html>
