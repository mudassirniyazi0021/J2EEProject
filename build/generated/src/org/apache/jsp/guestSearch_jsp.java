package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.Connection;

public final class guestSearch_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
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
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\r\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<title>Web Application</title>\r\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<link href=\"css/main.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"header\">\r\n");
      out.write("  <h1><a href=\"#\">Web page Recomandation </a></h1>\r\n");
      out.write("  <ul id=\"menu\">\r\n");
      out.write("    <li class=\"active\"></li>\r\n");
      out.write("    <li><a href=\"register.jsp\">Register</a></li>\r\n");
      out.write("    <li><a href=\"user_login.jsp\">User Login</a></li>\r\n");
      out.write("    <li><a href=\"admin_login.jsp\">Admin Login </a></li>\r\n");
      out.write("    <li><a href=\"about.jsp\">About us</a></li>\r\n");
      out.write("  </ul>\r\n");
      out.write("</div>\r\n");
      out.write("<div id=\"bar\">\r\n");
      out.write("  <div class=\"wrap\"> </div>\r\n");
      out.write("</div>\r\n");
      out.write("<div class=\"wrap\">\r\n");
      out.write("  <div class=\"col\">\r\n");
      out.write("    \r\n");
      out.write("    <p>     ");

            String qr = request.getParameter("searchquery");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wpr","root", "root");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from linkdb where description like '%"+ qr +"%'");
            
      out.write("\r\n");
      out.write("                         <table border=\"0\" width=\"90%\" cellpadding=\"5\">\r\n");
      out.write("                            <thead>\r\n");
      out.write("                                <tr>\r\n");
      out.write("                                      <TH>Search Results</TH>\r\n");
      out.write("                                </tr>\r\n");
      out.write("                            </thead>\r\n");
      out.write("                            ");
 while (rs.next()) {  
      out.write("\r\n");
      out.write("                            <hr/>\r\n");
      out.write("                            <tbody>\r\n");
      out.write("                                <tr><td></td></tr>\r\n");
      out.write("                                <tr><td></td></tr>\r\n");
      out.write("                              <tr align=\"center\">                                                           \r\n");
      out.write("                                  <TD><a href=\"");
      out.print( rs.getString("link") );
      out.write("\"> ");
      out.print( rs.getString("link") );
      out.write("</a></TD>\r\n");
      out.write("                              </tr>\r\n");
      out.write("                            </tbody>\r\n");
      out.write("                             ");
}
      out.write("\r\n");
      out.write("                        </table>\r\n");
      out.write("  </p>\r\n");
      out.write("     <form method=\"post\" action=\"UserReg\"><center>\r\n");
      out.write("     </center>\r\n");
      out.write("    </form>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("<div id=\"footer\">\r\n");
      out.write("  <p>\t&copy; Copyright 2015&middot; All Rights Reserved</p>\r\n");
      out.write("</div>\r\n");
      out.write("<div align=center></div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
