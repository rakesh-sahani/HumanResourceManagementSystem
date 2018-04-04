<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Generate Pay Slip</title>
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
rs=(ResultSet)request.getAttribute("pay");
while(rs.next()){%>
<img src="images\cga-banner-img-hand-960-2.jpg" width="100%" height="124">
<h2 align="center" class="style1"> Generate Salary </h2>
<p align="center">Employee ID: 
  <input name="emp" type="text" readonly="readonly" value="<%out.println(rs.getString("Emp_Id"));%>"></p>
<p align="center">First Name : 
  <input name="fname" type="text" readonly="readonly" value="<%out.println(rs.getString("fname"));%>"/>  </p>
<p align="center">Last Name : 
  <input name="lname" type="text" readonly="readonly" value="<%out.println(rs.getString("lname"));%>"/>  </p>
<p align="center">Salary : 
  <input name="salary" type="text" value="<%out.println(rs.getString("salary"));%>"/>  </p>
<p align="center">Salary Status :
  <select name="status" >     <option>Paid</option>     <option>Unpaid</option>   </select>
</p>
<p align="center">
  <input type= "hidden" name = "page" value = "PayslipG" />
  <input type="submit" name="Submit" value="Generate" align="middle"/>
</p>
<%} %>
</form>
<%
}catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>





