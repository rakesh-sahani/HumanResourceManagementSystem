package com;
import java.sql.*;

public class payslip {
	Connection con;
	PreparedStatement ps;
	Statement st;
	ResultSet rs;
	public payslip() {
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","1234");
			}
		catch(Exception e){
			System.out.println(e);
			System.out.println("connection not build");
			}
		}	
	void PayEmploy(int empid,String fname,String lname ,int Salary,String Status)
	{
		try{	
			ps=con.prepareStatement("insert into payslip values(?,?,?,?,?)");
			ps.setInt(1, empid);
			ps.setString(2, fname);
			ps.setString(3, lname);
			ps.setInt(4, Salary);
			ps.setString(5, Status);
			ps.executeUpdate();			
			}
		catch(Exception e)
		{
			System.out.println(e);
			System.out.println("connection not build");
		}
		}		
	
	ResultSet PaySearch(int empid)
	{
		ResultSet rs=null;
		try
		{		
			st=con.createStatement();
			String query ="select * from employ where emp_id=" + empid;
			rs=st.executeQuery(query);
			}
		catch(Exception e)
		{
			System.out.println("Exception+" +e);
			}
		return rs;
		}
	ResultSet CheckSearch(int empid)
	{
		ResultSet rs=null;
		try
		{		
			st=con.createStatement();
			String query ="select * from payslip where emp_id=" + empid;
			rs=st.executeQuery(query);
			}
		catch(Exception e)
		{
			System.out.println("Exception+" +e);
			}
		return rs;
		}
}