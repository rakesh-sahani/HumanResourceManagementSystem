package com;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;

public class creProject {
	
	Connection con;
	Statement st;
    ResultSet rsa;
    
    public creProject() {
    	try{
	Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","1234");
    	}catch(Exception e)
    	{
    		System.out.println(e);
    		System.out.println("connection not build");
    	}
	
	}
	ResultSet proEmpId()
	{
	String query="select Emp_Id from Employ ";
			try {
				rsa=con.createStatement().executeQuery(query);
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		
	return rsa;
	}
	
	void crprct(int emp,int pid,String pname,String status)
	{
		try{
			
			PreparedStatement ps=con.prepareStatement("insert into project values(?,?,?,?)");
			ps.setInt(1, emp);
			ps.setInt(2, pid);
			ps.setString(3, pname);
			ps.setString(4, status);
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
			System.out.println("connection not build");
			}
		}
	
	
	}
