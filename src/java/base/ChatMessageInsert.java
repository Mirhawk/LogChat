package base;


import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;

public class ChatMessageInsert {
		Cnct cn = new Cnct();
		Connection con = cn.getConnection();
                String query;
                String csend;
                String ChatM;
                public void setValues(String csend,String ChatM)
                {
                this.csend=csend;
                this.ChatM=ChatM;
                }
                public void chatins()
	{
		Cnct cn = new Cnct();
		Connection con = cn.getConnection();
                String query;
                try {        
                    Statement stmt = (Statement) con.createStatement();
                    query = "insert into userchat values('"+csend+"','"+ChatM+"','all')";
                    stmt.executeUpdate(query);
                    }
                catch (SQLException e) {
                                	// TODO Auto-generated catch block
                                        e.printStackTrace();
                                        }
      	}
}
		


    