<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"import="java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Project</title>
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
<%
ResultSet rs;
%>
<form  action="LoginSer"  method="GET">
<%
try{
rs=(ResultSet)request.getAttribute("uup");
while(rs.next()){%>
<img src="images/sp-project-management-img.png" width="100%" height="131" />
<h2 align="center" class="style1"> Update Project Record </h2>
<p align="center">Project ID: &nbsp;&nbsp;&nbsp;&nbsp;
  <input type= "text" name = "pid"  readonly="readonly" value="<%out.println(rs.getString("pid"));%>"/>
  <p align="center"> Employee ID: <input type= "text" name = "emp"value="<%out.println(rs.getString("Emp_Id"));%>"/>
<p align="center">Project Name: <input type = "text" name = "pname" value = "<%out.println(rs.getString("pname"));%>"/>
<p align="center">Project Status:
    <select name="status" size="1">
  <option>Pending</option>
   <option>Working</option>
    <option>Completed</option>
  </select>

<p align="center">
  <input type= "hidden" name = "page" value = "updateproj" />
  <input type="submit" name="Submit" value="Update Project" align="middle"/>
<%} %>
	</form>
<%
}catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>