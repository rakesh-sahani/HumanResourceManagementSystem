package com;

import java.sql.*;

public class LoginDB {
		Connection con;
		Statement st;
		ResultSet rs;
		public LoginDB()
		{
			try{
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","1234");
				}
				catch(Exception e)
				{
					System.out.println(e);
					System.out.println("connection not build");
				}
		}
		
		 boolean vloginDB(String user,String pass,String type)
		 {
			try{
				st =con.createStatement();  
				ResultSet res=st.executeQuery("select * from login where user_id='"+user+ "' and password='"+pass+"' and type = '"+type+"'");
				if(res.next())
				{
					return true;
				}
			  }
			catch(Exception e)
				{
					System.out.println(e);
					System.out.println("connection not build");
				}
			return false;
		}
					
	}


