package com;
import java.sql.*;


public class CreateEmployDB {
	
	void create(CreateEmploy em)
	{
		try{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","1234");
			PreparedStatement ps=con.prepareStatement("insert into employ values(?,?,?,?,?,?,?,?)");
			ps.setInt(1, em.getEmpid());
			ps.setString(2, em.getFname());
			ps.setString(3, em.getLname());
			ps.setString(4, em.getGender());
			ps.setString(5, em.getDept());
			ps.setString(6, em.getCity());
			ps.setString(7, em.getMob());
			ps.setInt(8, em.getSalary());
			ps.executeUpdate();
			ps=con.prepareStatement("insert into login values(?,?,?)");
			ps.setString(1, em.getUser());
			ps.setString(2, em.getPwd());
			ps.setString(3, em.getType());
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
			System.out.println("connection not build");
			}
		}
}