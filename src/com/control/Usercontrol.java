package com.control;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import com.game.Game;


public class Usercontrol implements Servlet{

	@Override
	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("GBK");
		request.setCharacterEncoding("GBK");
		System.out.println("qwert");
		
		 String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	     String uri="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=GameWeb";
	     String s_user="sa";
	     String s_password="19980903kai";
	     SQLstudent sq=new SQLstudent(driverName,uri,s_user,s_password);
	    /* try {
			sq.rs=sq.stmt.executeQuery("SELECT * FROM YongHu");
			 while(sq.rs.next()){
	    	 System.out.println(sq.rs.getObject(1));
	    	 System.out.println(sq.rs.getObject(2));
	    	 response.getWriter().write((String)sq.rs.getObject(1)+"  ");
	    	 response.getWriter().write((String)sq.rs.getObject(2)+"<br>");
	     }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
	    String Username=request.getParameter("name");
	    String Phone=request.getParameter("phone");
	    String Password=request.getParameter("password");
	    String Sex=request.getParameter("Sex");
	    System.out.println(Username+Password+ Phone+ Sex);
	    try {
			System.out.println(sq.max());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	   sq.zhuce(Username, Password, Phone, Sex);
	    response.getWriter().write("用户 "+Username+" 注册成功!");
	    request.setAttribute("login", 1);
	    request.getRequestDispatcher("/jsp/main.jsp").forward(request, response);
	}
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ServletConfig getServletConfig() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void init(ServletConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	
}
