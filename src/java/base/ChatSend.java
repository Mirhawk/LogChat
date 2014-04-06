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

import dbsrv.ChatMessageInsert;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

                
                String name=(request.getSession().getAttribute("uname")).toString();
		String ChatM = request.getParameter("ChatMe");
                String CurrentDate=request.getParameter("showdate");
		out.println("<html> <body>");
		
                ChatMessageInsert cm=new ChatMessageInsert();
                cm.setValues(name,ChatM,CurrentDate);
                cm.chatins();
      	
                response.sendRedirect("chat.jsp?uname="+name+"");
                out.println("</body></html>");
        }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
        @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
            // TODO Auto-generated method stub
        }
}