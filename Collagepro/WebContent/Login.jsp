<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body >
<pre>							<img src="images/Logo1.jpg" width="469" height="195"></pre>
    <h1 align="center" ><font color="blue"> REX HR Solutions Pvt. Ltd </font></h1>
<marquee direction="right" ><font color="darkblue"><font size = 15><b><i>Developing Innovations</i></b></font></marquee>
<h2 align="center">Human Resource Management System </h2>
<form  action="LoginSer"  method="post" >
<font color="black"/></font>
<center>
<input type="radio" name="admin" value="admin" />Administrator
<input type="radio" name="admin"  value="employ"/>Employee
<table border=10 bgcolor="SKYBLUE" >
<tr>
  <td>
User ID:    &nbsp;&nbsp;
    <input type="text"  name="user" value=""></td></tr>
<tr><td>
Password: <input type="password" name="pwd" ></td></tr>
<tr><td><center/><input type= "hidden"  name="page" value = "login"/>
<input type= "Submit" value = "Login"></center></td></tr>
</table>
</center>
</form>
</body>
</html>