package com;

import java.io.IOException;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




/**
 * Servlet implementation class LoginSer
 */
public class LoginSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginSer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public String user;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		String pagename = request.getParameter("page");
		RequestDispatcher rd;
		CreateEmployDB Empdb=new CreateEmployDB();
		CreateEmploy e=(CreateEmploy)request.getAttribute("cemp");
		System.out.println(pagename);
		
		//Create Employ Record
		if(pagename.equals("create"))
		{
		request.getAttribute("cemp");
	    Empdb.create(e);
	    rd=request.getRequestDispatcher("Success.html");
		rd.forward(request, response);
		
		}
	
	
		//Update Employ Record
		if(pagename.equals("updateSearch"))
		{	
			updateEmpDB upEmp=new updateEmpDB();
			int empid=Integer.parseInt(request.getParameter("emp"));
			ResultSet rs=upEmp.USearch(empid);	
			System.out.println("in servlet empid34="+empid+"");
			request.setAttribute("up1", rs);
			rd=request.getRequestDispatcher("updateEmp1.jsp");
			rd.forward(request, response);
		}
	
		if(pagename.equals("update"))
		{
			updateEmpDB upEmp=new updateEmpDB();
			int empid=Integer.parseInt(request.getParameter("emp"));
			String Dept=request.getParameter("dept");
			String City=request.getParameter("city");
			String Mob=request.getParameter("mob");      
			int Salary=Integer.parseInt(request.getParameter("salary"));
			upEmp.updateEmploy(empid, Dept, City, Mob, Salary);
			System.out.println("in servlet empid12="+empid+"");
			rd=request.getRequestDispatcher("Success1.html");
			rd.forward(request, response);
		}
	
	
	//Reset Password Admin
		if(pagename.equals("ResetPasswordAdmin"))
		{
		String old=request.getParameter("old");
		String newp=request.getParameter("new");
		resetPassword rp = new resetPassword();
		rp.reset(user,old,newp);	
		rd=request.getRequestDispatcher("Success5.html");
		rd.forward(request, response);
		}
		
		//Reset Password Employ
		if(pagename.equals("ResetPasswordEmploy"))
		{
					
			String old=request.getParameter("old");
			String newp=request.getParameter("new");
			resetPassword rp = new resetPassword();
			rp.reset(user,old,newp);		
			rd=request.getRequestDispatcher("Success5.html");
			rd.forward(request, response);
		}
	
	//Set AttenDence 
	if(pagename.equals("attendence"))
	{
		attendence at=new attendence();
		String empid=request.getParameter("emp");
		String mdate=request.getParameter("mydate");
		String mtime=request.getParameter("mytime");
		String x = null;
		if((empid!=null)&&(mdate!=null))
		{
			x="Present";
		}
			else
			{
				x="Absent";
			}
		System.out.println("in servlet empid="+empid+"date="+mdate+"attaend="+x);
		at.atten(empid, mdate, mtime, x);
		rd= request.getRequestDispatcher("Success3.html");
		rd.forward(request, response);		
	}
	
	//Delete Employee
	if(pagename.equals("SDelete"))
	{
			
			Delete DE = new Delete();			
			int empid=Integer.parseInt(request.getParameter("emp"));
			ResultSet rs=DE.DeleteEmpId(empid);	
			System.out.println("in servlet empid34="+empid+"");
			request.setAttribute("DE", rs);
			rd=request.getRequestDispatcher("DeleteEmp.jsp");
			rd.forward(request, response);
	}
	
	
	if(pagename.equals("Deleted"))
	{
		Delete dt=new Delete();
		String empid=request.getParameter("emp");
		dt.del(empid);
		System.out.println("in servlet empid="+empid+"");
		rd=request.getRequestDispatcher("Success2.html");
		rd.forward(request, response);
		
	}
	
	//Project
	if(pagename.equals("prc"))
	{
		System.out.println("DONE");
		creProject cp=new creProject();
		ResultSet rst=cp.proEmpId();
		request.setAttribute("cpr", rst);
		rd= request.getRequestDispatcher("createProject.jsp");
		rd.forward(request, response);
	}
	
	if(pagename.equals("prjct"))
	{
		creProject crp=new creProject();
		int empi=Integer.parseInt(request.getParameter("emp"));
		int pid=Integer.parseInt(request.getParameter("pid"));
		String pname=request.getParameter("pname");
		String status=request.getParameter("status");
		crp.crprct(empi, pid, pname,status);
		System.out.println("in servlet empid="+empi+"");
		rd=request.getRequestDispatcher("Success.html");
		rd.forward(request, response);
		
	}
	
	//Update Project
	if(pagename.equals("updateProject"))
	{   
		System.out.println("DONE");
		updatProject upp = new updatProject();			
		int pid=Integer.parseInt(request.getParameter("pid"));
		ResultSet rs=upp.PSearch(pid);	
		System.out.println("in servlet pid34="+pid+"");
		request.setAttribute("uup", rs);
		rd=request.getRequestDispatcher("updateProject1.jsp");
		rd.forward(request, response);
	}
	
		if(pagename.equals("updateproj"))
		{
		updatProject upp=new updatProject();
		int empid=Integer.parseInt(request.getParameter("emp"));
		int pid=Integer.parseInt(request.getParameter("pid"));
		String pname=request.getParameter("pname");
	    String status=request.getParameter("status");
	    upp.updateProject(pid, empid, pname, status);
	    System.out.println("in servlet empid="+pid+"");
	    rd=request.getRequestDispatcher("Success1.html");
		rd.forward(request, response);
		}
	
	//Delete Project 
		if(pagename.equals("DelProject"))
		{   
			System.out.println("DONE");
			deleteProject dp=new deleteProject();			
			int pid=Integer.parseInt(request.getParameter("pid"));
			ResultSet rs=dp.PSearch(pid);	
			System.out.println("in servlet pid34="+pid+"");
			request.setAttribute("dp", rs);
			rd=request.getRequestDispatcher("deleteProject1.jsp");
			rd.forward(request, response);
		}
	
	if(pagename.equals("DeleteProject"))
	{
		deleteProject dpt=new deleteProject();
		int pid=Integer.parseInt(request.getParameter("pid"));
		dpt.del(pid);
		System.out.println("in servlet empid="+pid+"");
		rd=request.getRequestDispatcher("Success2.html");
		rd.forward(request, response);
		
	}
	//PaySlip
	if(pagename.equals("Payslip"))
	{	
		payslip pay=new payslip();
		int empid=Integer.parseInt(request.getParameter("emp"));
		ResultSet rs=pay.PaySearch(empid);	
		System.out.println("in servlet empid34="+empid+"");
		request.setAttribute("pay", rs);
		rd=request.getRequestDispatcher("Payslip1.jsp");
		rd.forward(request, response);
	}
	
	if(pagename.equals("PayslipG"))
	{
		System.out.println("DONE");
		payslip pay1=new payslip();
		int empid=Integer.parseInt(request.getParameter("emp"));
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		int Salary=Integer.parseInt(request.getParameter("salary"));
		String Status=request.getParameter("status");
		pay1.PayEmploy(empid, fname, lname, Salary, Status);
		rd= request.getRequestDispatcher("Success4.html");
		rd.forward(request, response);
	}
	
	if(pagename.equals("CheckPayslip"))
	{	
		payslip pay=new payslip();
		int empid=Integer.parseInt(request.getParameter("emp"));
		ResultSet rs=pay.CheckSearch(empid);	
		System.out.println("in servlet empid34="+empid+"");
		request.setAttribute("checkpay", rs);
		rd=request.getRequestDispatcher("CheckPayslip1.jsp");
		rd.forward(request, response);
	}
	
	}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
		String pagename = request.getParameter("page");
		RequestDispatcher rd;
		System.out.println(pagename);
		String password,type;
		user=request.getParameter("user");
		password=request.getParameter("pwd");
		type=request.getParameter("admin");
		if(pagename.equals("login"))
		{
			LoginDB db=new LoginDB();
			if(type.equals("admin"))
			{
				if(db.vloginDB(user,password,type))
			{	
			rd= request.getRequestDispatcher("Admin.jsp");
			rd.forward(request, response);
			}
			else 
			{
			rd= request.getRequestDispatcher("Error.jsp");
			rd.forward(request, response);
		    } 
				}
			else
			{
				if(db.vloginDB(user,password,type))
			{
			rd= request.getRequestDispatcher("employ.jsp");
			rd.forward(request, response);
			}
			else 
			{
			rd= request.getRequestDispatcher("Error.jsp");
			rd.forward(request, response);
		    } 
			}	
			}
	}

}
