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
<script language="javascript" type="text/javascript">
      function valid()
      {
        var b;
            var user=document.login.username.value;
            var user=user.trim();
            var pass=document.login.password.value;
         if(user == '')
          {
            alert("Please enter Username");
            b = false;
         }
         if(pass == '')
            {
            alert("Please enter password");
            //document.getElementById('error').innerHTML="Please Enter Password";
            b = false;
            }
            return b;
        }
       
     </script>
</head>
<body>
<div id="header">
  <h1><a href="#">Web page Recomandation </a></h1>
  <ul id="menu">
    <li class="active"></li>
    <li><a href="changeAdminPass.jsp">Change Password</a></li>
    <li><a href="viewUsers.jsp">View Users</a></li
    <li><a href="viewFiles.jsp">View Files</a></li>
    <li><a href="Logout">Logout</a></li>
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
    <h3>Update Password </h3>
    <p> <center>
        <form  name="login" method="post" action="UpdateAdminPass" onsubmit="valid();">
                                      <table>
                                          <tr><td>Username</td><td><input type="text" name="uname" id="username" value="<% out.println(session.getAttribute("uname"));%>" /></td></tr>
                                          <tr><td>New Password</td><td><input type="password" id="password" name="pass" /></td></tr>
                                          <tr><td><center><input type="submit" value="Submit" /></center></td></tr>
                                      </table>
		 </form>
           </center></p>
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
