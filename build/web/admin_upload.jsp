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
    <li><a href="changeAdminPass.jsp">Change Password</a></li>
    <li><a href="viewUsers.jsp">View Users</a></li>
  
    <li> <a href="Logout"> Logout</a></li>
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
    <h3>Upload your file  here...! </h3>
    <p></p>
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
