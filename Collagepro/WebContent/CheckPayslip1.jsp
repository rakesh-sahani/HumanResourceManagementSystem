<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,java.sql.ResultSet"%>
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
.style2 {
	font-size: 16px;
	font-family:"Times New Roman", Times, serif;
	color: #000000;
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
rs=(ResultSet)request.getAttribute("checkpay");%>
<h2 align="center" class="style1"> Pay Slip </h2>
 <table border="1" width="100%" align="center">
            <TR>
                <TH>Employee ID</TH>
                <TH>First Name</TH>
				<TH>Last Name</TH>
				<TH>Salary</TH>
				<TH>Status</TH>
            </TR>
            <% while(rs.next()){ %>
            <TR>
                <TD> <%= rs.getInt(1) %></tD>
                <TD> <%= rs.getString(2) %></TD>
                <TD> <%= rs.getString(3) %></TD>
				<TD> <%= rs.getInt(4) %></TD>
				<TD> <%= rs.getString(5) %></TD>
			</TR>          
  </TABLE>      
           
</form>
    <%} %>
    <br> <br> <br> <br> <br> <br>
      <center><input  name="button" type="button" class="style2" onClick="window.print()" value="Print">
      </center>
      <%
}catch(Exception e){
	e.printStackTrace();
}
%>
</body>
</html>





