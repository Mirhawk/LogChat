package dbsrv;

import base.Cnct;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class ChatMessageInsert {
		Cnct cn = new Cnct();
		Connection con = cn.getConnection();
                String query;
                String csend;
                String ChatM;
                String Dte;
                public void setValues(String csend,String ChatM,String Dte)
                    {
                    this.csend=csend;
                    this.ChatM=ChatM;
                    this.Dte=Dte;
                    }
                public void chatins()
                	{
        		Cnct cn = new Cnct();
        		Connection con = cn.getConnection();
                        String query;
                        try {        
                            Statement stmt = (Statement) con.createStatement();
                            query = "insert into userchat values('"+csend+"','"+ChatM+"','all','"+Dte+"')";
                            stmt.executeUpdate(query);
                            }
                        catch (SQLException e) {
                                	// TODO Auto-generated catch block
                                        e.printStackTrace();
                                        }
                        }
}   