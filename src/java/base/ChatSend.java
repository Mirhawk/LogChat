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
import temp.MyClient;

/**
 * Servlet implementation class Controller
 */
public class ChatSend extends HttpServlet {
	private static final long serialVersionUID = 1L;

        /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doPost(request,response);
                }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
        @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
            // TODO Auto-generated method stub
        	response.setContentType("text/html");
		PrintWriter out = response.getWriter();
                LogB lb =new LogB();
                out.println("<html> <body>");
		String ChatMessage1=request.getParameter("ChatMessage");
		String name=lb.getName();
                ChatMessageInsert cm=new ChatMessageInsert();
                cm.setValues(name,ChatMessage1);
                cm.chatins();
                //RequestDispatcher rd = request.getRequestDispatcher("chat.jsp");
                response.sendRedirect("chat.jsp");
                //rd.forward(request, response);
                
	}
        

}