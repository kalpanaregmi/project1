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
                                    <li class="menu item"><a href="admin1.jsp">View Student</a></li>
					 <li class="menu item"><a href="viewfaculty.jsp">View FACULTY</a></li>
					 <li class="menu item"><a href="uploadmaterial.jsp">Upload Material</a></li>
					 <li class="menu item"><a href="deletmaterial.jsp">Delet Material</a></li>
					<li class="menu item"><a href="viewfeedback.jsp">View Feedback</a></li>
					 <li class="menu item"><a href="home.jsp">Logout</a></li>

				</ul>
			</div><!--leftmenu end-->
<div id="content">
		
<table border="1">
<tr>
<td>first name</td>
<td>last name</td>
<td>std</td>
<td>Email</td>
<td>phone no</td>
<td>address</td>
<td>past marks</td>
<td>past school</td>



</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from studreg";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("firstname") %></td>
<td><%=resultSet.getString("lastname") %></td>
<td><%=resultSet.getString("std") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("phoneno") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("pastmarks") %></td>
<td><%=resultSet.getString("pastschool") %></td>
<td><a href="deletefaculty.jsp?id=<%=resultSet.getString("id") %>"><button type="button" class="delete">Delete</button></a></td>
<td><a href="studadd.jsp?id=<%=resultSet.getString("id")%>"><button type="button" class="delete">Add</button></a></td>

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