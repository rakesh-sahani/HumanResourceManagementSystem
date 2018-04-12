<%@ page language="java" import="java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrator Functions List</title>
</head>
<body bgcolor="#000000" text = "white">
<%out.println("Welcome !!!");%><br><hr color="red"/>
<a href="createEmploy.jsp" target="right"style="color:white">Create Employee </a><hr color="red"/><br>
<a href="updateEmp.jsp" target="right"style="color:white">Update Employee</a><hr color="red"/><br>
<a href="Delete.jsp" target="right"style="color:white">Delete Employee</a><hr color="red"/><br>
<a href="LoginSer?page=prc" target="right"style="color:white">Project Allotment</a><hr color="red"/><br>
<a href="updateProject.jsp" target="right"style="color:white">Update Project</a><hr color="red"/><br>
<a href="deleteProject.jsp" target="right"style="color:white">Delete Project </a><hr color="red"/><br>
<a href="Payslip.jsp" target="right"style="color:white">Generate Pay Slip</a><hr color="red"/><br>
<a href="ViewEmploy.jsp" target="right"style="color:white">View Employee Record</a><hr color="red"/><br>
<a href="ViewProject.jsp" target="right"style="color:white">View Project Record</a><hr color="red"/><br>
<a href="updatePasswordAdmin.jsp" target="right"style="color:white">Reset Password</a><hr color="red"/><br>
</body>
</html>