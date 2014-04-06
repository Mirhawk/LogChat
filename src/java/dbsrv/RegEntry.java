package dbsrv;

import base.Cnct;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class RegEntry {
		Cnct cn = new Cnct();
		Connection con = cn.getConnection();
                String rname;
                String rpass;
                public void setRegValues(String csend,String ChatM)
                    {
                    this.rname=csend;
                    this.rpass=ChatM;
                    }
                public void regins()
                	{
        		Cnct cn = new Cnct();
        		Connection con = cn.getConnection();
                        String query;
                        try {        
                            Statement stmt = (Statement) con.createStatement();
                            query = "insert into users values('"+rname+"','"+rpass+"')";
                            stmt.executeUpdate(query);
                            }
                        catch (SQLException e) {
                                	// TODO Auto-generated catch block
                                        e.printStackTrace();
                                        }
                        }
}   