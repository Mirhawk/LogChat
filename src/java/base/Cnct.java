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

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import sun.jdbc.odbc.OdbcDef;

public class Cnct {
	
	public Connection getConnection()
	{
		Connection con=null;
		
		try {
			
			//Class.forName("oracle.jdbc.driver.OracleDriver");
                    Class.forName("com.mysql.jdbc.Driver");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
          try {
			//con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","mirhawk","apache");
              con =DriverManager.getConnection("jdbc:mysql://localhost:3308/userdb","mirhawk","apache");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		return con;
	}	
}
