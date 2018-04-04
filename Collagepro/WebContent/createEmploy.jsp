<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Create Employ</title>
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
<jsp:useBean id="cemp" class="com.CreateEmploy" scope="request"/>
<jsp:setProperty property="*" name="cemp"/>
<%
if(cemp.getFname()!=null){
%>
<jsp:forward page="LoginSer"/>
<%} %>
<form name="frm" method="get" >
<img src="images\hrms.png" width="100%" height="124">
<h2 align="center" class="style1"> Create Employee Record </h2>
<p align="left">Employ ID :&nbsp;&nbsp;&nbsp;
  <input type= "text" name = "empid" size = "4"> 
<p align="center">First Name :&nbsp;&nbsp;<input type= "text" name = "fname" size = "20">
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 
Last Name : <input type= "text" name = "lname" size = "20"> 
<p align="center">Gender : <input type= "radio" name="gender" value= "male"> Male
  <input type= "radio" name="gender"  value= "female">Female 
<p align="center">Department :&nbsp;&nbsp;&nbsp;
  <select name="dept" >
     <option>IT</option>
     <option>Staffing</option>
    <option>Programming</option>
     <option>Testing</option>
   </select>
<p align="center"> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;City  :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
  <input type= "text" name = "city"size = "20" />
<p align="center">&nbsp;&nbsp; &nbsp;&nbsp;Mobile No. : 
  <input type= "text" name = "mob" size = "10"/></p>
<p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Salary :&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  
  <input type= "text" name = "salary" size = "10"/></p>
<p align="center">User Name :&nbsp;&nbsp;
  <input type= "text" name = "user" >
&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 
Password : 
<input type= "text" name = "pwd"size = "10"> </p>
<p align="center">
<br>Choose User Type:&nbsp; &nbsp;<select name="type" >
 <option>Admin</option>
 <option>Employ</option>
 </select>
 <br>
 <br>  
 <input type= "hidden" name = "page" value = "create" />
  <input type= "Submit" name = "submit" value = "Registered"/>
 </p>
</form>
</body>
</html>