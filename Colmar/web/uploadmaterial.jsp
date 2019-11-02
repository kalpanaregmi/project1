
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
					 <li class="menu item"><a href="admin1.jsp">View Student</a></li>
					 <li class="menu item"><a href="viewfaculty.jsp">View FACULTY</a></li>
					 <li class="menu item"><a href="uploadmaterial.jsp">Upload Material</a></li>
					 <li class="menu item"><a href="deletmaterial.jsp">Delet Material</a></li>
					<li class="menu item"><a href="viewfeedback.jsp">View Feedback</a></li>
					 <li class="menu item"><a href="adminsendmail.jsp">Send Email</a></li> 
                                        <li class="menu item"><a href="home.jsp">Logout</a></li>

				</ul>
			</div><!--leftmenu end-->
                        <div id="content">
    <center>
        
        <form action="UploadServlet" method="post" enctype="multipart/form-data">
            <table width="400px" align="center" border=2>
                <tr>
                    <td align="center" colspan="2">Form Details</td>
                </tr>
                <tr>
                    <td>First Name </td>
                    <td>
                        <input type="text" required="" name="firstname">
                    </td>
                </tr>
                <tr>
                    <td>Last Name </td>
                    <td>
                        <input type="text" required="" name="lastname">
                    </td>
                </tr>
                <tr>
                    <td>Select File </td>
                    <td>
                        <input type="file" required="" name="file">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Submit"></td>
                </tr>
            </table>

        </form>
        <br><a href="adminviewlist.jsp">View List</a>
        
    </center>
                            <div>
</body>
</html>

