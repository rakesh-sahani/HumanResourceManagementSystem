<%@ page language="java" import="java.util.*,java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employ Attendances</title>
</head>
<body>
<%!ResultSet rs;
String s;

%>
<form  action="LoginSer"  method="GET" >
<img src="images/sp-project-management-img.png" width="100%" height="131" />
<p align="center"><strong>Select Employee Id:  
  </strong><input type= "text" name = "emp">
  <%response.setIntHeader("Refresh", 5); %>
  <%
    java.text.DateFormat date = new java.text.SimpleDateFormat("yyyy-MM-dd");
    java.text.DateFormat time = new java.text.SimpleDateFormat("hh:mm:ss a"); 
  %>
 <br> <br>Current Date: <input type="text" name="mydate" readonly="readonly" value="<%= date.format(new java.util.Date()).toString() %>"/>
 
   Current Time: 
   <input type="text" name="mytime" readonly="readonly" value="<%= time.format(new java.util.Date()).toString()%>"/>
    </p>
 </p>
 <p align="center">
 <input type= "hidden" name = "page" value = "attendence" />
  <input type="submit" name="Submit" value="Submit" align="middle"/>
</p>
</form>
</body>
</html>