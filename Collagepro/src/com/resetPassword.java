package com;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;


public class resetPassword {
			Connection con;
			Statement st;
			void reset(String user,String oldpass,String newpass)
			{
				try{
					
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","1234");
					PreparedStatement ps=con.prepareStatement("update login set password ='"+newpass+"'where password='"+oldpass+"' and user_id = '"+user+"'");
					ps.executeUpdate();
				   }
				catch(Exception e)
				{
					System.out.println(e);
					System.out.println("connection not build");
					}
				}

		}
