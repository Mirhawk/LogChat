package base;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Mirhawk
 */

import dbsrv.LogB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controller
 */
public class Cntlr extends HttpServlet {
	private static final long serialVersionUID = 1L;
        public String name;
        public String password;

        /**
        * Default constructor. 
        */
        public Cntlr() {
                        // TODO Auto-generated constructor stub
                       }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
                        response.setContentType("text/html");
                        PrintWriter out = response.getWriter();
		
                        name=request.getParameter("un");
                        password = request.getParameter("pwd");
                    
                        out.println("<html> <body>");
			
                        LogB lb = new LogB();
                        lb.setName(name);
                        lb.setPassword(password);
                        
                        boolean res = lb.validate();
                        if(res)
                                {
                                //request.setAttribute("uname",name);
                                RequestDispatcher rd = request.getRequestDispatcher("chat.jsp?uname="+name+"");
                                rd.forward(request, response);
                                }
                        else
                                {
                                out.print("<script language='JavaScript'>alert('Error! Invalid Username or password!');</script>");
                                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                                rd.include(request, response);
                        	}
		
                        out.println("</body></html>");
                        }
        
        public String SendName() {
		return name;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
        @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
            // TODO Auto-generated method stub
            response.setContentType("text/html");
	
	}
}