package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("       <link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\">\n");
      out.write("\t\t<title>COLMARS ACADEMY</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <img src=\"logo1.jpg\" height=\"50\" width=\"50\" style=\"float:left;margin:0;padding:20px 0 0 150px;\"> \n");
      out.write("\t\t<div id=\"container\">\n");
      out.write("\t\t<div id=\"header\">\n");
      out.write("\t\t<h1><span class=\"blue-text\">COLMARS</span> ACADEMY</h1>\n");
      out.write("\t\t<h2>TAKE YOUR FIRST LEAP<span class=\"white-text\">TOWARDS SUCCESS</span></h2>\n");
      out.write("\t\t</div><!--header end-->\n");
      out.write("\t\t<div id=\"menu\">\n");
      out.write("\t\t\t<ul>\n");
      out.write("\t\t\t\t<li class=\"menuitem\"><a href=\"home.jsp\">Home</a></li>\n");
      out.write("\t\t\t\t<li class=\"menuitem\"><a href=\"aboutus.jsp\">About Us</a></li>\n");
      out.write("\t\t\t\t<li class=\"menuitem\"><a href=\"contactus.jsp\">Contact Us</a></li>\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t\t</div><!--menu end-->\n");
      out.write("\t\t<div id=\"leftmenu\">\n");
      out.write("\t\t\t<h3>Links</h3>\n");
      out.write("\t\t\t<ul>\n");
      out.write("\t\t\t\t<li class=\"menuitem\"><a href=\"finalstudlogin.jsp\">STUDENT LOGIN</a></li>\n");
      out.write("\t\t\t\t<li class=\"menuitem\"><a href=\"facullogin.jsp\">FACULTY LOGIN</a></li>\n");
      out.write("\t\t\t\t<li class=\"menuitem\"><a href=\"adminlogin.jsp\">ADMIN LOGIN</a></li>\n");
      out.write("\t\t\t\t<li class=\"menuitem\"><a href=\"celebratedevents.jsp\">CELEBRATED EVENTS</a></li>\n");
      out.write("\t\t\t\t<li class=\"menuitem\"><a href=\"upcomingevents.jsp\">UPCOMING EVENTS</a></li>\n");
      out.write("\t\t\t\t<li class=\"menuitem\"><a href=\"feesstructure.jsp\">FEES STRUCTURE</a></li>\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t\t</div><!--leftmenu end-->\n");
      out.write("\t\t<div id=\"content\">\n");
      out.write("\t\t\t<h2>Welcome to Colmar Academy classes</h2>\n");
      out.write("\t\t\t<img class=\"float\" src=\"book.jpg\" alt=\"colmar logo\" height=\"170\" width=\"170\">\n");
      out.write("\t\t\t<h3>Who r we??</h3>\n");
      out.write("\t\t\t<p>Coaching for all subject ,with special emphises on maths and science</p>\n");
      out.write("\t\t\t<h3>Speciality of our classes</h3>\n");
      out.write("\t\t\t<p>Audio visual presesntstion on important topic.Teaching as per the latest syllabus and recommendation suggested by the education department.\n");
      out.write("\t\t\tconvenint payment options Affordable fees.Detailed explanation on each topic followed by oral and written test.WE GUARANTEE SUCCESS</p>\n");
      out.write("\t\t</div><!--content1 ends-->\n");
      out.write("\t\t<div id=\"content\">\n");
      out.write("\t\t<h2>TEACHERS</h2>\n");
      out.write("\t\t<div class=\"developer\">\n");
      out.write("\t\t\t<h4> kalpana</h4>\n");
      out.write("\t\t\t<ul>\n");
      out.write("\t\t\t\t<li><strong>Location:</strong>Bostan USA</li>\n");
      out.write("\t\t\t\t<li><strong>skills:</strong>HTML,PHP,CSS</li>\n");
      out.write("\t\t\t\t<li><strong>Availibility:</strong>Full time</li>\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t\t\t<a href=\"view1.jsp\">View Profile</a>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"developer\">\n");
      out.write("\t\t\t<h4>dinesh</h4>\n");
      out.write("\t\t\t<ul>\n");
      out.write("\t\t\t\t<li><strong>Location:</strong>Bostan USA</li>\n");
      out.write("\t\t\t\t<li><strong>skills:</strong>HTML,PHP,CSS</li>\n");
      out.write("\t\t\t\t<li><strong>Availibility:</strong>Full time</li>\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t\t\t<a href=\"view2.jsp\">View Profile</a>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"developer\">\n");
      out.write("\t\t\t<h4>xyz</h4>\n");
      out.write("\t\t\t<ul>\n");
      out.write("\t\t\t\t<li><strong>Location:</strong>Bostan USA</li>\n");
      out.write("\t\t\t\t<li><strong>skills:</strong>HTML,PHP,CSS</li>\n");
      out.write("\t\t\t\t<li><strong>Availibility:</strong>Full time</li>\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t\t\t<a href=\"view3.jsp\">View Profile</a>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"developer\">\n");
      out.write("\t\t\t<h4>ram</h4>\n");
      out.write("\t\t\t<ul>\n");
      out.write("\t\t\t\t<li><strong>Location:</strong>Bostan USA</li>\n");
      out.write("\t\t\t\t<li><strong>skills:</strong>HTML,PHP,CSS</li>\n");
      out.write("\t\t\t\t<li><strong>Availibility:</strong>Full time</li>\n");
      out.write("\t\t\t</ul>\n");
      out.write("\t\t    <a href=\"view4.jsp\">View Profile</a> \n");
      out.write("\t\t</div>\n");
      out.write("\t\t</div><!--container end-->\n");
      out.write("\t\t<footer style=\"font-weight:bold;text-align:center;\">\n");
      out.write("\t\t      <img src=\"phone.png\" width=\"40\" height=\"40\">9930 742215 / 9892448531   Email:colmarsacademy@yahoo.com\n");
      out.write("\t\t</footer>\n");
      out.write("\t\t<div style=\"clear:both\"></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
