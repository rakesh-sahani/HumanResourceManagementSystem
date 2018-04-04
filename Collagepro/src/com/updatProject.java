package com;
import java.sql.*;

public class updatProject {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	Statement st;
	
	public updatProject() {
		// TODO Auto-generated constructor stub
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
		
		void updateProject(int pid,int id,String pname,String status)
		{
			try{
				ps=con.prepareStatement("update project set  emp_id ="+id+",pname='"+pname+"',status = '"+status+"' where pid="+pid+"");
				ps.executeUpdate();
			}
			catch(Exception e)
			{
				System.out.println(e);
				System.out.println("connection not build");
				}
			}
	
}
		
		

