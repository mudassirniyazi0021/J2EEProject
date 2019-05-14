<%-- 
    Document   : index
    Created on : Oct 23, 2015, 10:48:57 PM
    Author     : Mythos-1
--%>

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
    
    <li><a href="register.jsp">Register</a></li>
    <li><a href="user_login.jsp">User Login</a></li>
    <li><a href="admin_login.jsp">Admin Login </a></li>
    <li><a href="about.jsp">About us</a></li>
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
    <h3>Abstract<span class="red"></span></h3>
    <p>On World Wide Web various kind of content are generated in huge amount, so to give relevant result to user web recommendation become important part of web application. On web different kind of web recommendation are made available to user every day that includes Image, Video, Audio, query suggestion and web page. In this paper we are aiming at providing framework for web page recommendation. 1) First we describe the basics of web mining, types of web mining. 2) Details of each web mining technique.3)We propose the architecture for the personalized web page recommendation.</p>
  </div>
</div>
<div id="footer">
  <p>	&copy; Copyright 2015&middot; All Rights Reserved</p>
</div>
<div align=center></div>
</body>
</html>
