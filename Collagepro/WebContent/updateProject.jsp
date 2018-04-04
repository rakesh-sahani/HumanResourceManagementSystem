<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"import="java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Search Update Project</title>
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
<body >
<form  action="LoginSer"  method="GET">
<img src="images/sp-project-management-img.png" width="100%" height="131" />
<h2 align="center" class="style1"> Update Project Record </h2>
<p align="center"><strong>Search Project ID: 
  <input type= "text" name = "pid" value = "" />
</strong> </p>
  <p align="center"><br>
    <input type= "hidden" name = "page" value = "updateProject" />
    <input type= "Submit" name = "submit" value = "Search" />
  </p>
</form>
</body>
</html>