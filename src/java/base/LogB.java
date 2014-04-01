package base;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LogB {
	
	private String name;
	private String password;
        private String dbUsername;
        private String dbPassword;
    
        
	
	public void setName(String name) {
		this.name = name;
	}
        public String getName() {
		return name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
        
        public String SendName() {
		return this.name;
	}
        
	
	//method to check for valid user
	public boolean validate()
	{
		boolean result=false;
		Cnct cn = new Cnct();
		Connection con = cn.getConnection();
                String query;
                try {        
                    Statement stmt = (Statement) con.createStatement();
                    query = "SELECT * from users";
                    stmt.executeQuery(query);
                    ResultSet rs = stmt.getResultSet();
                    while(rs.next()){
                                    dbUsername = rs.getString("usn");
                                    dbPassword = rs.getString("password");
                                    if(dbUsername.equals(name) && dbPassword.equals(password)){
                                                                                                result = true;
                                                                                                Cnct ccn = new Cnct();
		Connection ccon = ccn.getConnection();
                String cquery;
                try {        
                    Statement cstmt = (Statement) ccon.createStatement();
                    cquery = "insert into useronline values('"+name+"')";
                    cstmt.executeUpdate(cquery);
                    }
                catch (SQLException e) {
                                	// TODO Auto-generated catch block
                                        e.printStackTrace();
                                        }
                                                                                                return result;
                                                                                              }
                                    }
                    }
                catch (SQLException e) {
                                	// TODO Auto-generated catch block
                                        e.printStackTrace();
                                        }
      	return result;
        }
}

    