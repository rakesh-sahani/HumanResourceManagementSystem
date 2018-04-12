<%@ page language="java" import="java.util.*,java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Pay Slip</title>
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
<img src="images\cga-banner-img-hand-960-2.jpg" width="100%" height="124">
<%!ResultSet rsa;
String s;
%>
<form  action="LoginSer"  method="GET" >
<h2 align="center" class="style1"> Check Pay Slip </h2>
<p align="center"><strong>Search Employee ID: <input type= "text" name = "emp">
</strong>
<p align="center">
  <input type= "hidden" name = "page" value = "CheckPayslip" />
  <input type="submit" name="Submit" value="Search" align="middle"/>
</form>
</body>
</html>





