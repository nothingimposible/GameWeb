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

@WebServlet("/jsp/gameController")
public class Gamecontrol implements Servlet{

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
	     System.out.println("跳转成功");
	     String kinds =  request.getParameter("kinds");
	     request.setAttribute("gametype", kinds);
	     System.out.println(kinds);  //分类
	     String snumber=request.getParameter("num"); 
	     
	     int number=Integer.parseInt(snumber);
	     request.setAttribute("number", number);  //当前页数
	     System.out.println("num:"+number);
	     
	     String sql="";
	     if(kinds.equals("coupe")){
	 			 sql="select * from Game where type = 'coupe'";
	     }else if(kinds.equals("risk")){
		 	    sql="select * from Game where type = 'risk'";
	     }
	     else if(kinds.equals("action")){
		 	    sql="select * from Game where type = 'action'";
	     }
	     else if(kinds.equals("role")){
		 	    sql="select * from Game where type = 'role'";
	     }
	     else if(kinds.equals("alpinia")){
		 	    sql="select * from Game where type = 'alpinia'";
	     }
	     else if(kinds.equals("tower")){
		 	    sql="select * from Game where type = 'tower'";
	     }
	     else if(kinds.equals("sports")){
		 	    sql="select * from Game where type = 'sports'";
	     }
	     else if(kinds.equals("shoot")){
		 	    sql="select * from Game where type = 'shoot'";
	     }
	     else if(kinds.equals("chess")){
		 	    sql="select * from Game where type = 'chess'";
	     }
	     else if(kinds.equals("strategy")){
		 	    sql="select * from Game where type = 'strategy'";
	     }
	     else if(kinds.equals("leisure")){
		 	    sql="select * from Game where type = 'leisure'";
	     }
	     else if(kinds.equals("girl")){
		 	    sql="select * from Game where type = 'girl'";
	     }
	     else if(kinds.equals("dress")){
		 	    sql="select * from Game where type = 'dress'";
	     }
	     else if(kinds.equals("children")){
		 	    sql="select * from Game where type = 'children'";
	     }
	     else if(kinds.equals("pass")){
		 	    sql="select * from Game where type = 'pass'";
	     }
	     else if(kinds.equals("warfare")){
		 	    sql="select * from Game where type = 'warfare'";
	     }
	     
	     int num;
	     ArrayList<Game> list;
	     ArrayList<Game> rankinglist;
	     ArrayList<Game> firelist;
		try {
			list = sq.gameresult(sql);
			rankinglist=sq.gameresult("select top 10 * from Game where type = '"+kinds+"' order by onclick desc");
			firelist=sq.gameresult("select top 40 * from Game where type = '"+kinds+"' order by onclick desc");
		   	num=list.size()/140;
		  // 	System.out.println("num2:"+num);
		   	request.setAttribute("num", num); //总页数
		   	for(Game s:rankinglist){
		   		System.out.println(s.toString());
		   	}
		   	request.setAttribute("firelist", firelist);
		   	request.setAttribute("rankinglist", rankinglist);
			 request.setAttribute("gamelist", list);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	    request.getRequestDispatcher("/jsp/shortgame.jsp").forward(request, response);
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
