<%-- 
    Document   : facultysendemail
    Created on : 2 Oct, 2019, 10:53:21 AM
    Author     : DINESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="css/style.css" type="text/css">
		<title>COLMARS ACADEMY</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
					  <li class="menu item"><a href="admin1.jsp">View Student</a></li>
					 <li class="menu item"><a href="viewfaculty.jsp">View FACULTY</a></li>
					 <li class="menu item"><a href="uploadmaterial.jsp">Upload Material</a></li>
					 <li class="menu item"><a href="deletmaterial.jsp">Delet Material</a></li>
					<li class="menu item"><a href="viewfeedback.jsp">View Feedback</a></li>
					 <li class="menu item"><a href="adminsendmail.jsp">Send Email</a></li>
                                        <li class="menu item"><a href="home.jsp">Logout</a></li>

				</ul>
			</div><!--leftmenu end-->
		</div>
		<div id="content">
                     <form action="adminmailJSP.jsp">

            <table>

                <tr><td><b><font color="red">To:

                    </td>

                    <td><b><b><input type="text" name="mail" placeholder="Enter sender mail-id"/><br/>

                    </td>

                </tr>

                <tr>

                    <td>

                        <b><font color="red">Subject:

                    </td>

                    <td>

                        <input type="text" name="sub" placeholder="Enter Subject Line"><br/>

                    </td>

                </tr>

                <tr>

                    <td>

                        <b><font color="red">Message Text:

                    </td>

                    <td>

                        <textarea rows="12" cols="80" name="mess"></textarea><br/>

                    </td>

                </tr>

                <tr>

                    <td>

                        <input type="submit" value="Send">

                    </td>

                    <td>

                        <input type="reset" value="Reset">

                    </td>

                </tr>

            </table>

        </form>

		</div>

      
    </body>
</html>
