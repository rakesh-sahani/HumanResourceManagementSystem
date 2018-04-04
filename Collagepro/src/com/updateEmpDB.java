package com;

import java.sql.*;

public class updateEmpDB {
	Connection con;
	PreparedStatement ps;
	Statement st;
	ResultSet rs;
	public updateEmpDB() 
	{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","1234");
			}
		catch(Exception e){
			System.out.println(e);
			System.out.println("connection not build");
			}
	}
	
	
	void updateEmploy(int id,String dept,String city ,String mob,int salary)
	{
		try{		
			ps=con.prepareStatement("update employ set dept ='"+dept+"',city ='"+city+"',mob='"+mob+"',salary = "+salary+" where emp_id="+id+"");
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
			System.out.println("connection not build");
			}
		}
	
	ResultSet USearch(int empid)
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
}
	
	