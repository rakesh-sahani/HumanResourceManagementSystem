package com;
import java.sql.*;
public class deleteProject {
	
	Connection con;
	Statement st;
    ResultSet rsa;
    
    public deleteProject() {
    	try{
	Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","1234");
    	}catch(Exception e)
    	{
    		System.out.println(e);
    		System.out.println("connection not build");
    	}
	
	}
	
		ResultSet PSearch(int pid)
		{
			ResultSet rs=null;
			try
			{
				st=con.createStatement();
				String query ="select * from project where pid =" + pid;
				rs=st.executeQuery(query);
			}
			catch(Exception e)
			{
				System.out.println("Exception+" +e);
			}
			return rs;
		}
		
		
			void del(int pid)
			{
				try{								
					PreparedStatement ps=con.prepareStatement("delete from project where pid = '"+pid+"'");
					ps.executeUpdate();
				   }
				catch(Exception e)
				{
					System.out.println(e);
					System.out.println("connection not build");
					}
				}

		}

