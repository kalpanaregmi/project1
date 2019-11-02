package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class facullogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("                <script type=\"text/javascript\">\n");
      out.write("        function validate(){\n");
      out.write("            var username=document.getElementById(\"uname\");\n");
      out.write("            var password=document.getElementById(\"pass\");\n");
      out.write("            if(username.value.trim() ==\"\") \n");
      out.write("            {\n");
      out.write("                alert(\"no empty value allowed\");\n");
      out.write("                uname.style.border=\"solid 3px red\";\n");
      out.write("                document.getElementById(\"lbluser\").style.visibility=\"visible\";\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("            else if(password.value.trim() ==\"\") \n");
      out.write("            {\n");
      out.write("                alert(\"no empty password value allowed\");\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("            else if(password.value.trim().length<5) \n");
      out.write("            {\n");
      out.write("                alert(\"password too short\");\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("            else\n");
      out.write("            {\n");
      out.write("                true;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <img src=\"logo1.jpg\" height=\"50\" width=\"50\" style=\"float:left;margin:0;padding:20px 0 0 150px;\"> \n");
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
      out.write("\t\t\t\t\t <li class=\"menu item\"><a href=\"finalstudlogin.jsp\">STUDENT LOGIN</a></li>\n");
      out.write("\t\t\t\t\t <li class=\"menu item\"><a href=\"facullogin.jsp\">FACULTY LOGIN</a></li>\n");
      out.write("\t\t\t\t\t <li class=\"menu item\"><a href=\"adminlogin.jsp\">ADMIN LOGIN</a></li>\n");
      out.write("\t\t\t\t\t <li class=\"menu item\"><a href=\"celebratedevents.jsp\">CELEBRATED EVENTS</a></li>\n");
      out.write("\t\t\t\t\t<li class=\"menu item\"><a href=\"upcomingevents.jsp\">UPCOMING EVENTS</a></li>\n");
      out.write("\t\t\t\t\t <li class=\"menu item\"><a href=\"feesstructure.jsp\">FEES STRUCTURE</a></li>\n");
      out.write("\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div><!--leftmenu end-->\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div id=\"content\">\n");
      out.write("\t\t\t<form action=\"faculvalidate.jsp\" onsubmit=\"return validate()\"  >\n");
      out.write("\t\t\t\t<h3>Faculty Login</h3>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<input id=\"uname\" type=\"text\" required=\"\" name=\"username\" placeholder=\"USERNAME\"><br>\n");
      out.write("                                        <label id=\"lbluser\" style=\"color:red;visibility:hidden\">Invalid</label><br>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<input id=\"pass\" type=\"password\" required=\"\" name=\"password\" placeholder=\"PASSWORD\"><br><br>\n");
      out.write("\t\t\t\n");
      out.write("                                        <center><input type=\"submit\" name=\"login\" value=\"LOGIN\" > <a href=\"faculchgpass.jsp\" >Change Password</a></center><br><br>\n");
      out.write("                                        <a href=\"facultyregistration.jsp\">Create one</a>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t</form>\n");
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
