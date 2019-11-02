package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class finalstudlogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\">\n");
      out.write("\t\t<title>COLMARS ACADEMY</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <img src=\"logo1.jpg\" height=\"50\" width=\"50\" style=\"float:left;margin:0;padding:20px 0 0 150px;\"> \n");
      out.write("\t\t<div id=\"container\">\n");
      out.write("\t\t\t<div id=\"header\">\n");
      out.write("\n");
      out.write("\t\t\t\t<h1><span class=\"blue-text\">COLMARS</span> ACADEMY</h1>\n");
      out.write("\t\t\t\t<h2>TAKE YOUR FIRST LEAP<span class=\"white-text\">TOWARDS SUCCESS</span></h2>\n");
      out.write("\t\t\t</div><!--header end-->\n");
      out.write("\t\t\t<div id=\"menu\">\n");
      out.write("\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t <li class=\"menu item\"><a href=\"home.jsp\">Home</a></li>\n");
      out.write("\t\t\t\t\t <li class=\"menu item\"><a href=\"aboutus.jsp\">About Us</a></li>\n");
      out.write("\t\t\t\t\t <li class=\"menu item\"><a href=\"contactus.jsp\">Contact Us</a></li>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div><!--menu end-->\n");
      out.write("\t\t\t<div id=\"leftmenu\">\n");
      out.write("\t\t\t\t<h3>Links</h3>\n");
      out.write("\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t <li ><a href=\"finalstudlogin.jsp\">STUDENT LOGIN</a></li>\n");
      out.write("\t\t\t\t\t <li ><a href=\"facullogin.jsp\">FACULTY LOGIN</a></li>\n");
      out.write("\t\t\t\t\t <li ><a href=\"adminlogin.jsp\">ADMIN LOGIN</a></li>\n");
      out.write("\t\t\t\t\t <li ><a href=\"celebratedevents.jsp\">CELEBRATED EVENTS</a></li>\n");
      out.write("\t\t\t\t\t <li ><a href=\"upcomingevents.jsp\">UPCOMING EVENTS</a></li>\n");
      out.write("\t\t\t\t\t <li ><a href=\"feesstructure.jsp\">FEES STRUCTURE</a></li>\n");
      out.write("\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div><!--leftmenu end-->\n");
      out.write("\t\t</div><!--containers ends-->\n");
      out.write("\t\t<div id=\"content\">\n");
      out.write("\t\t\t<form class=\"box\" action=\"studvalidate.jsp\">\n");
      out.write("<h3>LOGIN</h3>\n");
      out.write("<input type=\"text\" required=\"\" name=\"username\" placeholder=\"USERNAME\"><br><br>\n");
      out.write("<input type=\"password\" name=\"password\" required=\"\" placeholder=\"PASSWORD\"><br><br>\n");
      out.write("<center><input type=\"submit\" value=\"LOGIN\"><a href=\"pass.jsp\">   Change Password</a></center><br><p>No Account,<a href=\"studreg.jsp\">Create One</a></p>\n");
      out.write("\n");
      out.write("</form>\n");
      out.write("\t\t</div>\n");
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
