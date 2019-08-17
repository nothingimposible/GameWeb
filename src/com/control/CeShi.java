package com.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CeShi
 */
@WebServlet("/jsp/CeShi")
public class CeShi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CeShi() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html/jsp;charset=utf-8");
		ServletContext context=super.getServletContext();
		System.out.println("逻辑代码");
		
		Integer num=(Integer) context.getAttribute("number");
		if(num==null)
			num=1;
		else
		num++;
		PrintWriter out=response.getWriter();
		context.setAttribute("number", num);
		System.out.println(num);
		out.print(num);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html/jsp;charset=utf-8");
		ServletContext context=super.getServletContext();
		System.out.println("逻辑代码");
		
		Integer num=(Integer) context.getAttribute("number");
		if(num==null)
			num=1;
		else
		num++;
		PrintWriter out=response.getWriter();
		context.setAttribute("number", num);
		System.out.println(num);
		out.print(num);
		// request.getRequestDispatcher("/jsp/ceshi.jsp").forward(request, response);
	}

}
