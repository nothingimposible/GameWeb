package com.control;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.game.Game;

class Myconnection{
	public static Connection getconnection(String driverName,String uri,String user,String password){
		Connection conn=null;
		try {
			Class.forName(driverName);
			try {
				conn=DriverManager.getConnection(uri,user,password);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			return conn;
		}
	}
}

class SQLstudent{
	Statement stmt;
	private PreparedStatement pstmt;
    ResultSet rs;
	private String driverName;
	private String uri;
	private Connection conn;
	private String user;
	private String password;
	private Connection getconn(){
		return Myconnection.getconnection(driverName, uri,user,password);
	}
	public SQLstudent(String driverName,String uri,String user,String password){
		this.driverName=driverName;
		this.uri=uri;
		this.user=user;
		this.password=password;
		conn=getconn();
		try {
			this.stmt=conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public int max() throws SQLException{
		String sql="select * from User1 where id =(select MAX(id) from User1)";
		ResultSet rs=stmt.executeQuery(sql);
		int a=1;
		while(rs.next()){
		  a=rs.getInt(1);
		}
		return a;
		
	}
	
	public void click(int id) throws SQLException{
		String sql="update Game set onclick=onclick+1 where game_id="+id;
		stmt.executeUpdate(sql);
	}
	
	
	public Game searchgame(int id) throws SQLException{
		String sql="select * from Game where game_id ="+id;
		rs=stmt.executeQuery(sql);
		Game game=new Game();
		while(rs.next()){
			game.setID(rs.getInt(1));
			game.setName(rs.getString(2));
			game.setLink(rs.getString(3));
			game.setSpicture(rs.getString(4));
			game.setPicture1(rs.getString(5));
			game.setPicture2(rs.getString(6));
			game.setPicture3(rs.getString(7));
			game.setText(rs.getString(8));
			game.setMessage(rs.getString(9));
			game.setClassify1(rs.getString(10));
			game.setClassify2(rs.getString(11));
			game.setClassify3(rs.getString(12));
			game.setClassify4(rs.getString(13));
			game.setOnclick(rs.getInt(14));
			game.setType(rs.getString(15));
		}
		return game;
		
	}
	
	public int querystudent(String user,String password) throws SQLException{
		int a=0;	  
	        	String sql="select * from User1";
				rs=stmt.executeQuery(sql);
				String a1,b1;
				while(rs.next()){
				a1=rs.getString(2);
				b1=rs.getString(3);
					if(a1.equals(user)&&b1.equals(password))
				     {					
						a=1;
				     }
			}					
			
		return a;
	}
	public ArrayList<Game> gameresult(String sql) throws SQLException{
		// sql="select * from RiskGame";
		rs=stmt.executeQuery(sql);
		ArrayList<Game> list=new ArrayList<Game>();
		
		while(rs.next()){
			Game game=new Game();
			
			game.setID(rs.getInt(1));
			game.setName(rs.getString(2));
			game.setLink(rs.getString(3));
			game.setSpicture(rs.getString(4));
			game.setPicture1(rs.getString(5));
			game.setPicture2(rs.getString(6));
			game.setPicture3(rs.getString(7));
			game.setText(rs.getString(8));
			game.setMessage(rs.getString(9));
			game.setClassify1(rs.getString(10));
			game.setClassify2(rs.getString(11));
			game.setClassify3(rs.getString(12));
			game.setClassify4(rs.getString(13));
			game.setOnclick(rs.getInt(14));
			game.setType(rs.getString(15));
			list.add(game);
			
		}
		
		return list;
		
	}
	
	
	
	public void zhuce(String Username,String Password,String Phone,String Sex){
		String sql = "insert into User1 values (?,?,?,?,?)";
	
		try {
			this.pstmt=conn.prepareStatement(sql);
			int id=this.max()+1;
			pstmt.setInt(1, id);
			pstmt.setString(2, Username);
			pstmt.setString(3, Password);
			pstmt.setString(4, Phone);
			pstmt.setString(5, Sex);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}

public class DateBase {

}
