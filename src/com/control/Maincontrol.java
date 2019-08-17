package com.control;


import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import com.game.Game;


public class Maincontrol implements Servlet{

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
	  
	     String sql="select top 140 * from Game where type = 'coupe'";
	     ArrayList<Game> list;
			try {
				list = sq.gameresult(sql);
			  for(Game s:list){
				  System.out.println(s.toString());
			  }
				 request.setAttribute("gamelist", list);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
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
