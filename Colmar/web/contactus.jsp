<%-- 
    Document   : contactus
    Created on : 16 Jul, 2019, 8:49:48 PM
    Author     : dinesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="css/style.css" type="text/css">
		<title>COLMARS ACADEMY</title>
    </head>
    <img src="logo1.jpg" height="50" width="50" style="float:left;margin:0;padding:20px 0 0 150px;">
    <div id="container">
         
	<div id="header">

				<h1><span class="blue-text">COLMARS</span> ACADEMY</h1>
				<h2>TAKE YOUR FIRST LEAP<span class="white-text"> TOWARDS SUCCESS</span></h2>
			</div><!--header end-->
	<div id="menu">
			<ul>
				<li class="menuitem"><a href="home.jsp">Home</a></li>
				<li class="menuitem"><a href="aboutus.jsp">About Us</a></li>
				<li class="menuitem"><a href="contactus.jsp">Contact Us</a></li>
			</ul>
	</div><!--menu end-->
		
		<div id="leftmenu">
			<h3>Links</h3>
			<ul>
				 <li class="menu item"><a href="finalstudlogin.jsp">STUDENT LOGIN</a></li>
				 <li class="menu item"><a href="facullogin.jsp">FACULTY LOGIN</a></li>
				 <li class="menu item"><a href="adminlogin.jsp">ADMIN LOGIN</a></li>
				 <li class="menu item"><a href="celebratedevents.jsp">CELEBRATED EVENTS</a></li>
				 <li class="menu item"><a href="upcomingevents.jsp">UPCOMING EVENTS</a></li>
				 <li class="menu item"><a href="feesstructure.jsp">FEES STRUCTURE</a></li>
			</ul>
		</div><!--leftmenu end-->
		<div id="content">
    <body  style="margin:0;background-color:#FFDAB9;color:#fff;">
        <h1 style="margin:0;padding:5px;background-color:#333;color:#fff;">
			COLMAR ACADEMY
		</h1>
        
		<div style="padding-left:10px; color:black"><!-- main div start-->
		<h3>Contact Us</h3>
		<p>Please use this form to contact us.</p>
		<form method="post" action="contactusprocess.jsp">
		<p>
			<label for="name">Full Name:</label>
			<input type="text" name="fullname">
		</p>
		<p>
			<label for="email">Email:</label>
			<input type="text" name="email">
		</p>
		<p>
			<label for="phone">Phone Number:</label>
			<input type="text" name="phoneno">
		</p>
		<p>
			<label for="call">Best time to call</label>
			<input type="radio" name="call" value="morning" checked>Morning
			<input type="radio" name="call" value="afternoon">Afternoon
			<input type="radio" name="call" value="evening">Evening
		</p>
		
		<p>
			<label for="subject" ">Subject Needed:(check all that apply)</label>
			<table style="color:black;float:left;" >
		<tr>
			<td><input type="checkbox" name="subject" value="maths">Maths</td>
			<td><input type="checkbox" name="subject" value="science">Science</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="subject" value="hindi">Hindi</td>
			<td><input type="checkbox" name="subject" value="marathi">Marathi</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="subject" value="history">History</td>
			<td><input type="checkbox" name="subject" value="geography">Geography</td>
		</tr>
		</table><br><br><br><br><br>
		</p>
		<p><input type="submit" name="submit" value="Submit Form" ></p>
</div><!-- main div ends-->
 </div><!--content end-->
</div><!--container end-->
      
    </body>
</html>
