<%-- 
    Document   : index
    Created on : Oct 23, 2015, 10:48:57 PM
    Author     : Mythos-1
--%>

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
  <!--   <li class="active"></li>
    <li><a href="register.jsp">Register</a></li>
    <li><a href="user_login.jsp">User Login</a></li>
    <li><a href="admin_login.jsp">Admin Login </a></li>
    <li><a href="about.jsp">About us</a></li>       -->
  </ul>
</div>
<div id="teaser">
  <div class="wrap">
    <div id="image"></div>
    <div class="box">
      <h2><em title="Sharing, Data Management and Collaboration">Search Engine</em></h2>
      <p>
      <form method="post" action="guestSearch.jsp">
          <center>
            <input type="text" name="searchquery"/><br/><br/>
            <input type="submit" value="Search"/>
          </center>
      </form>
      </p>
    </div>
  </div>
</div>
<div id="bar">
  <div class="wrap"> <span class="step"><a>1</a> sharing</span> <span class="step"><a>2</a> data management</span> <span class="step"><a>3</a> collaboration</span> </div>
</div>
<div class="wrap">
  <div class="col">
      <h3>java t point <span class="red"></span></h3>
    <p></p>
  </div>
</div>
<div id="footer">
  <p>	&copy; Copyright 2015&middot; All Rights Reserved</p>
</div>
<div align=center></div>
</body>
</html>
