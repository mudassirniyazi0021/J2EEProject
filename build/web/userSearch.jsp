<%-- 
    Document   : index
    Created on : Oct 23, 2015, 10:48:57 PM
    Author     : Mythos-1
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
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
     <li><a href="user_home.jsp">Home</a></li>
    <li><a href="updateUser.jsp">Update Profile</a></li>
    <li><a href="changeUserPass.jsp">Change Password</a></li>
    <li><a href="Logout">Logout </a></li>
  <!--  <li><a href="about.jsp">About us</a></li>  -->
  </ul>
</div>
<div id="bar">
  <div class="wrap">        
  </div>
</div>

<div class="wrap">
  <div class="col">
     <%  
            String uname = (String) session.getAttribute("uname");
            String qr = request.getParameter("searchquery");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wpr","root", "root");
            Statement st = con.createStatement();            
  //(select link from userlog where description like '%java%' and username="aa" ) union (select link from linkdb where description like '%java%');

ResultSet rs2 = 
        st.executeQuery("select distinct link from userlog where description like '%"+qr+"%' and username='"+uname+"'");
         
            %>
            <center>
                <table>                          
                                 <tbody>
                                 <thead>
                                     <tr>
                                          <th></th>
                                          <TH style="font-size: large">Recommended Site from your Previous Clicks..!</TH>
                                          <th></th>
                                     </tr>
                                 </thead>
                                 <% while (rs2.next()) {
                                // String dp =rs2.getString("description");
                                // session.setAttribute("dpn",dp);%>
                                 <tr align="center">
                                 <form method="post" action="GetLog">
                                     <input type="hidden" name="userclick" value="<%= rs2.getString("link")%>"/>
                                       <TD><%= rs2.getString("link")%></TD>
                                       <!--<td><%//=// rs2.getString("description")%></td>-->
                                       <td><input type="submit" value="click here...!"></td>
                                 </form>
                                   </tr>             
                                 </tbody>
                                  <%}%>
                </table> 
           </center>
           </br></br>
     <%  
            
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wpr","root", "root");
            Statement st1 = con.createStatement();            
  //(select link from userlog where description like '%java%' and username="aa" ) union (select link from linkdb where description like '%java%');
//(select link,description from userlog where description like '%"+qr+"%' and username='"+uname+"' ) union (select link,description from linkdb where description like '%"+qr+"%')
ResultSet rs3 = 
        st1.executeQuery("select link,description from linkdb where description like '%"+qr+"%'");
         
            %>
            <center>
                <table>                          
                                 <tbody>
                                 <thead>
                                     <tr>
                                          <th></th>
                                          <TH style="font-size: large">Other Related sites</TH>
                                          <th></th>
                                     </tr>
                                 </thead>
                                 <% while (rs3.next()) {
                                 String dp1 =rs3.getString("description");
                                 session.setAttribute("dpn",dp1);%>
                                 <tr align="center">
                                 <form method="post" action="GetLog">
                                     <input type="hidden" name="userclick" value="<%= rs3.getString("link")%>"/>
                                       <TD><%= rs3.getString("link")%></TD>
                                       <!--<td><%//=// rs3.getString("description")%></td>-->
                                       <td><input type="submit" value="click here...!"></td>
                                 </form>
                                   </tr>             
                                 </tbody>
                                  <%}%>
                </table>
            </center>
  </div>
</div>
<div id="footer">
  <p>	&copy; Copyright 2015&middot; All Rights Reserved</p>
</div>
<div align=center></div>
</body>
</html>
