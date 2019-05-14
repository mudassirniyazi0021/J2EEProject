<%-- 
    Document   : index
    Created on : Oct 23, 2015, 10:48:57 PM
    Author     : Mythos-1
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Web Application</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="header">
  <h1><a href="#">Web page Recomandation </a></h1>
  <ul id="menu">
    <li class="active"></li>
    <li><a href="index.jsp">Home</a></li>
    <li><a href="register.jsp">Register</a></li>
    <li><a href="user_login.jsp">User Login</a></li>
    <li><a href="admin_login.jsp">Admin Login </a></li>
    <li><a href="about.jsp">About us</a></li>
  </ul>
</div>
<div id="bar">
  <div class="wrap"> </div>
</div>
<div class="wrap">
  <div class="col">
    
    <p>     <%
            String qr = request.getParameter("searchquery");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wpr","root", "root");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from linkdb where description like '%"+ qr +"%'");
            %>
                         <table border="0" width="90%" cellpadding="5">
                            <thead>
                                <tr>
                                      <TH>Search Results</TH>
                                </tr>
                            </thead>
                            <% while (rs.next()) {  %>
                            <hr/>
                            <tbody>
                                <tr><td></td></tr>
                                <tr><td></td></tr>
                              <tr align="center">                                                           
                                  <TD><a href="<%= rs.getString("link") %>"> <%= rs.getString("link") %></a></TD>
                              </tr>
                            </tbody>
                             <%}%>
                        </table>
  </p>
     <form method="post" action="UserReg"><center>
     </center>
    </form>
  </div>
</div>
<div id="footer">
  <p>	&copy; Copyright 2015&middot; All Rights Reserved</p>
</div>
<div align=center></div>
</body>
</html>
