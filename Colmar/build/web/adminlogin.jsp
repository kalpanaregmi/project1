<%-- 
    Document   : adminlogin
    Created on : 16 Jul, 2019, 11:25:37 PM
    Author     : dinesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css" type="text/css">
		<title>COLMARS ACADEMY</title>
                <script type="text/javascript">
        function validate2(){
            var username=document.getElementById("uname");
            var password=document.getElementById("pass");
            if(username.value.trim() =="") 
            {
                alert("no empty value allowed");
                uname.style.border="solid 3px red";
                document.getElementById("lbluser").style.visibility="visible";
                return false;
            }
            else if(password.value.trim() =="") 
            {
                alert("no empty password value allowed");
                return false;
            }
            else if(password.value.trim().length<5) 
            {
                alert("password too short");
                return false;
            }
            else
            {
                true;
            }
        }
        </script>
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
					 <li class="menu item"><a href="finalstudlogin.jsp">STUDENT LOGIN</a></li>
					 <li class="menu item"><a href="facullogin.jsp">FACULTY LOGIN</a></li>
					 <li class="menu item"><a href="adminlogin.jsp">ADMIN LOGIN</a></li>
					 <li class="menu item"><a href="celebratedevents.jsp">CELEBRATED EVENTS</a></li>
					 <li class="menu item"><a href="upcomingevents.jsp">UPCOMING EVENTS</a></li>
					 <li class="menu item"><a href="feesstructure.jsp">FEES STRUCTURE</a></li>

				</ul>
			</div><!--leftmenu end-->
		</div>
		<div id="content">
			<form action="adminvalidate.jsp" onsubmit="return validate2()">
				<h3>Admin Login</h3>
				
					
					<input id="uname" type="text" required="" name="name" placeholder="USERNAME">
				<br><br>
					
					<input id="pass" type="password" required="" name="password" placeholder="PASSWORD">
				<br><br>
					<center><input type="submit" name="login" value="LOGIN" ></center>
			</form>
		</div>

    </body>
</html>
