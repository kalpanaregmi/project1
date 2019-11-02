<%-- 
    Document   : studreg
    Created on : 16 Aug, 2019, 10:02:12 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/style.css" type="text/css">
        <title>JSP Page</title>
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
		</div>
		<div id="content">
			<form action="studprocess.jsp">
                            
				<h3>Student Registration</h3>
				
					
					<input type="text" required="" name="firstname" placeholder="FIRST NAME" >
				
					<br><br>
					<input type="text" required="" name="lastname" placeholder="LAST NAME">
				
					<br><br>
                                        <input type="text" required="" name="std" placeholder="ADMISSION FOR STANDARD">
				
					<br><br>
                                        <input type="text" required="" name="email" placeholder="EMAIL">
				
					<br><br>
                                        <input type="text" required="" name="username" placeholder="username">
				
					<br><br>
                                        <input type="password" required="" name="password" placeholder="password">
				
					<br><br>
                                        <input type="password" required="" name="confirmpassword" placeholder="confirm password">
				
					<br><br>
                                       
					
					<input type="text" required="" name="phoneno" placeholder="PHONE NO">
				<br><br>
                                <textarea name="address" required="" placeholder="ADDRESSS"></textarea>
				<br><br>
                                <input type="text" required="" name="pastmarks" placeholder="PAST ACADEMY RESULT">
				<br><br>
                                <input type="text" required="" name="pastschool" placeholder="PAST SCHOOL NAME">
				<br><br>
					
					<center><input type="submit" name="registration" value="REGISTRTION">
			</form>
		</div>

    </body>
</html>
