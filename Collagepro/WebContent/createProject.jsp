<%@ page language="java" import="java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Project</title>
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
<%!ResultSet rst;
String s;
%>
<form  name="frm" action="LoginSer"  method="GET">
<img src="images/sp-project-management-img.png" width="100%" height="131"/>
<h2 align="center" class="style1"> Project Allotment </h2>
<p align="center"><strong>Select Employee ID:  
  </strong>
  <select name="emp"  >
  <%rst=(ResultSet)request.getAttribute("cpr");
  while(rst.next()){ 
	  s=rst.getString(1);
 %>

     <option value=<%=s %>><%out.println(s);%></option>
    <%} %>
    </select>
<p align="center">Project ID: &nbsp;&nbsp;&nbsp;&nbsp;
  <input type= "text" name = "pid" value = "" />
<p align="center">Project Name: 
  <input type= "text" name = "pname" value = "" />
</p>
<p align="center">Project Status:
    <select name="status" size="1">
  <option>Pending</option>
   <option>Working</option>
    <option>Completed</option>
  </select>
  </p>
<div align="center">
  <input type= "hidden" name = "page" value = "prjct" />
  <input type="submit" name="Submit" value="Create Project" align="middle"/>
</div>
</form>
</body>
</html>