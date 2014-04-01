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
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
                //change from here
                
                String name=(request.getSession().getAttribute("uname")).toString();
		String ChatM = request.getParameter("ChatMe");
		out.println("<html> <body>");
		
		//change till here
                /*8ChatMessageInsert cm=new ChatMessageInsert();
                cm.setValues(name,ChatM);
                cm.chatins();*/
                
                //New code from here
                Cnct cn = new Cnct();
		Connection con = cn.getConnection();
                String query;
                try {        
                    Statement stmt = (Statement) con.createStatement();
                    query = "insert into userchat values('"+name+"','"+ChatM+"','all')";
                    stmt.executeUpdate(query);
                    }
                catch (SQLException e) {
                                	// TODO Auto-generated catch block
                                        e.printStackTrace();
                                        }
      	
                
                //new code ends here
                //RequestDispatcher rd = request.getRequestDispatcher("chat.jsp?name="+name+"");
                response.sendRedirect("chat.jsp?uname="+name+"");
                //rd.forward(request, response);
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