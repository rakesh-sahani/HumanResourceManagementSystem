<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Password Administrator</title>
</head>
<body>
<form  action="LoginSer"  method="GET" >
<img src="images\password.jpg" width="100%" height="124" />
<p>&nbsp;</p>
<p>&nbsp;</p>
<p align="center">  Old Password : <input type="text" name="old" />
<p align="center">  <label>New Password</label>  :&nbsp;  <input type="text" name="new" />  &nbsp;
<p align="center">
 <input type= "hidden" name = "page" value = "ResetPasswordAdmin" />
  <input type="submit" name="Submit" value="Reset Password" />
</p>
<p>&nbsp; </p>
</form>
</body>
</html>