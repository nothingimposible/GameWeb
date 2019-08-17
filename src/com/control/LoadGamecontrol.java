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

import com.game.Game;

@WebServlet("/jsp/LoadGamecontrol")
public class LoadGamecontrol implements Servlet{

	@Override
	public void service(ServletRequest request, ServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("GBK");
		request.setCharacterEncoding("GBK");	
		 String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	     String uri="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=GameWeb";
	     String s_user="sa";
	     String s_password="19980903kai";
	     SQLstudent sq=new SQLstudent(driverName,uri,s_user,s_password);
	     String num=request.getParameter("gameid");
	     
	     int gameid=Integer.parseInt(num);
	     
	     System.out.println(num);
		 try {
			Game game=sq.searchgame(gameid);
			String gametype=game.getClassify1();
			String sql="select top 6 * from Game where classify1='"+gametype+"' or classify2='"+gametype+"' or classify3='"+gametype+"' or classify4='"+gametype+"'  order by onclick desc";
			ArrayList<Game> relevantgame=sq.gameresult(sql);
			for(Game s:relevantgame)
				System.out.println(s.toString());
			request.setAttribute("relevantgame", relevantgame);
			sq.click(gameid);
			
			request.setAttribute("game", game);
			System.out.println(game.toString());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
	    request.getRequestDispatcher("/jsp/loadgame.jsp").forward(request, response);
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
