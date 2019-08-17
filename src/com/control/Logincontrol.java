package com.control;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/jsp/Logincontrol")
public class Logincontrol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logincontrol() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stubS
		response.setCharacterEncoding("GBK");
		request.setCharacterEncoding("GBK");
		
		 String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	     String uri="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=GameWeb";
	     String s_user="sa";
	     String s_password="19980903kai";
	     SQLstudent sq=new SQLstudent(driverName,uri,s_user,s_password);
		System.out.println("get方法");
		String name=(String)request.getParameter("uname");
		String password=(String)request.getParameter("upwd");
		HttpSession session=request.getSession();
		try {
			if(sq.querystudent(name, password)==1){
				session.setAttribute("user", name);
				System.out.println("登陆成功");
			}else{
				System.out.println("登陆失败");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		System.out.println(name+password);
		response.getWriter().print(1);
		
		 request.getRequestDispatcher("/jsp/main.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		System.out.println("post");
		String name=(String)request.getAttribute("uname");
		String password=(String)request.getAttribute("upwd");
		System.out.println(name+password);
		response.getWriter().print(1);
	}

}
