

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/style.css" type="text/css">
<title>COLMARS ACADEMY</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
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
    <center>
        <c:if test="${requestScope.msg!=null}">
        <h3><c:out value="${requestScope.msg}"></c:out></h3>
        </c:if><br><br>
        <c:if test="${sessionScope.fileName!=null}">
            <c:set var = "file" scope = "session" value = "${sessionScope.fileName}"/>  
        </c:if>
         <a href = "<c:url value = "DownloadServlet?fileName=${file}"/>">Download</a>&nbsp;&nbsp;&nbsp;
         <a href = "<c:url value = "adminviewlist.jsp"/>">View List</a>
    </center>
                        </div>
    </body>
</html>
