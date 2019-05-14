<%-- 
    Document   : index
    Created on : Oct 23, 2015, 10:48:57 PM
    Author     : Mythos-1
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
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
    <li><a href="updateUser.jsp">Update Profile</a></li>
    <li><a href="changeUserPass.jsp">Change Password</a></li>
    <li><a href="Logout">Logout </a></li>
  <!--  <li><a href="about.jsp">About us</a></li>  -->
  </ul>
</div>
<div id="teaser">
  <div class="wrap">
    <div id="image"></div>
    <div class="box">
      <h2>Welcome to <em title="Sharing, Data Management and Collaboration">Web Application</em></h2>
      <p>Web page recommendations are becoming very popular, and are shown as links to related web page, related image, or popular pages at websites. When user sends request to web server, session is created for the user.The main aim of the recommendation system is to predict web page or pages from the user current session data and other user data.</p>
    </div>
  </div>
</div>
<div id="bar">
  <div class="wrap"> <span class="step"><a>1</a> sharing</span> <span class="step"><a>2</a> data management</span> <span class="step"><a>3</a> collaboration</span> </div>
</div>
<div class="wrap">
  <div class="col">
    <h3>Update User</h3>
    <p>
               <%
            String name =  (String) session.getAttribute("uname");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wpr","root", "root");
            Statement st = con.createStatement();

            ResultSet rs =
               st.executeQuery("select * from user where email='"+name+"'");

            while (rs.next()) {
        %>
        <form name="form1" method="post" action="UpdateUser" onclick="return update();">
                        <center>
                        <table border="0" width="90%" cellpadding="5">
                            <thead>
                                <tr>
                                    <th colspan="2">Update Profile here</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td width="23%">Name</td>
                                    <td width="77%"><input type="text" name="name"   value="<%=rs.getString("name")%>"/></td></tr>
                                <tr>
                                    <td>Mobile Number</td>
                                    <td><input type="text" name="mobno" maxlength="12" value="<%=rs.getString("mobno")%>"/></td>
                                </tr>
                                <tr>
                                    <td>Date of birth</td>
                                    <td><input type="date" name="dob" value="<%=rs.getString("dob")%>"/></td>
                                </tr>
                                 <tr>
                                    <td>Email id</td>
                                    <td><input type="text" name="email" value="<%=rs.getString("email")%>"/></td>
                                </tr>
                                 <tr>
                                    <td><input type="submit" value="Update" /></td>
                                </tr>
                              <!--  <tr>
                                    <td colspan="2"><p><a href="index.jsp">Login Here</a></p>
                                    </td>
                                </tr>  -->
                            </tbody>
                        </table>
                        </center>
                   </form>
                                <% } %>

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
<script src="non-empty.js" type="text/javascript"></script>
</body>
</html>
