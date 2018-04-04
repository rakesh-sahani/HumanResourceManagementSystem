package com;
	import java.sql.*;

	public class attendence {
			Connection con;
			Statement st;
		    ResultSet rs;
		    PreparedStatement ps;
		    
		    public attendence() {
		    	try{
		    		Class.forName("com.mysql.jdbc.Driver");
		    		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","1234");
		    		}
					catch(Exception e)
					{
						System.out.println("ReINSERT"+e);
						System.out.println("connection not build");
					}	
			}		
		    
		    
			ResultSet retriveEmpId(){
			String query="select Emp_Id from Employ";
			try{
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hr","root","1234");
				rs=con.createStatement().executeQuery(query);				
				}
			catch(Exception e)
			{
				System.out.println(e);
				System.out.println("connection not build");
			}
			return rs;
			}
			
			void atten(String empid,String date,String time,String attend)
			{
				System.out.println("empid="+empid+"date="+date+"attaend="+attend);
				try{
					ps=con.prepareStatement("insert into attendence values(?,?,?,?)");
					ps.setString(1, empid);
					ps.setString(2,date);
					ps.setString(3,time);
					ps.setString(4, attend);
					ps.executeUpdate();
					System.out.println("SUCCESS");
				  }
					catch(Exception e)
					{
						System.out.println("ReINSERT"+e);
						System.out.println("connection not build");
					}
		
			}
		}


