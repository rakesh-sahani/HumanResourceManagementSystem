package com;
import java.sql.*;
public class Delete {
		Connection con;
		PreparedStatement ps;
		ResultSet rs;
		Statement st;
public Delete() {
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
		
		
		ResultSet DeleteEmpId(int empid)
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
			
		void del(String id)
		{
			try
			{
				ps=con.prepareStatement("delete from employ where emp_id = "+id+"");
				ps.executeUpdate();
			}
			catch(Exception e)
			{
				System.out.println(e);
				System.out.println("connection not build");
			}
			
		}
		
}
