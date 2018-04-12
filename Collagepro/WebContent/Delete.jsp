<%@ page language="java" import="java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Delete Employ</title>
<style type="text/css">
<!--
.style1 {
	font-size: 36px;
	font-weight: bold;
	color: #2A5FFF;
}
-->
</style>
</head>
<body>
<form  name="frm" action="LoginSer"  method="GET">
<img src="images\hrms.png" width="100%" height="124">
<h2 align="center" class="style1"> Delete Employee Record </h2>
<p align="center"><strong>Search Employee ID: <input type= "text" name = "emp">
</strong></p>
<p align="center">
    <input type= "hidden" name = "page" value = "SDelete" />
<p align="center"><input type="submit" name="Submit" value="Search" align="middle"/>
</p>
</form>
</body>
</html>