package dbsrv;

import base.Cnct;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class UserLogOut {
		Cnct cn = new Cnct();
		Connection con = cn.getConnection();
                String delname;
                public void setdelValues(String delname)
                    {
                    this.delname=delname;
                    }
                public void usroff()
                	{
        		Cnct cn = new Cnct();
        		Connection con = cn.getConnection();
                        String query;
                        try {        
                            Statement stmt = (Statement) con.createStatement();
                            query = "delete from useronline where usronline='"+delname+"'";
                            stmt.executeUpdate(query);
                            }
                        catch (SQLException e) {
                                	// TODO Auto-generated catch block
                                        e.printStackTrace();
                                        }
                        }
}   