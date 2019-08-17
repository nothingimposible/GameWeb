package com.control;


import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

import org.apache.catalina.Session;

import com.game.Game;
@WebServlet("/jsp/Searchcontrol")
public class Searchcontrol implements Servlet{

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
	     String gamename=request.getParameter("Search");
	     request.setAttribute("gamename", gamename);
	     System.out.println(gamename);
	     String page1=request.getParameter("page");  //µ±Ç°Ò³Êý
	     if(page1==null)
	    	 page1="1";
	     int page=Integer.parseInt(page1);
	     System.out.println("page="+page);
	     request.setAttribute("page", page);
	    
	     String sql="select * from Game where name like '%"+gamename+"%'";
	  
	     try {
	    	 ArrayList<Game> searchlist = null;	 
	    		  searchlist=sq.gameresult(sql);
	    		 for(Game s:searchlist)
	    				System.out.println(s.toString());
			
			ArrayList<Game> rankinglist=sq.gameresult("select top 10 * from Game order by onclick desc");
			
			for(Game s:rankinglist)
				System.out.println(s.toString());
			System.out.println(searchlist.size());
			request.setAttribute("rankinglist", rankinglist);
			request.setAttribute("searchlist", searchlist);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 request.getRequestDispatcher("/jsp/Search.jsp").forward(request, response);
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
