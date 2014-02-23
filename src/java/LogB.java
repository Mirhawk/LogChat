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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LogB {
	
	private String name;
	private String password;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	//method to check for valid user
	public boolean validate()
	{
		boolean result=false;
		Cnct cn = new Cnct();
		
		Connection con = cn.getConnection();
		
		String query = "select password from users where password=?";
		
		PreparedStatement pstmt;
		try {
			    pstmt = con.prepareStatement(query);
			    pstmt.setString(1,password);
			    ResultSet rs = pstmt.executeQuery();
			    result = rs.next();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	
	}
	

}
