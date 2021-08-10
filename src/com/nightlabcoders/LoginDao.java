package com.nightlabcoders;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDao 
{

	private static Connection myConn = null;

	public  boolean check(String uname,String pwd) throws SQLException
	{

		try {
			// 1. Get a connection to database
			Class.forName("com.mysql.jdbc.Driver");
			myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/loginlogout?useSSL=false", "root" , "admin");
			
			String sql = "select * from login where uname=? and pwd=?";
			
			PreparedStatement st = myConn.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pwd);
			
			ResultSet rs = st.executeQuery();
			
			if(rs.next())
			{
				return true;
			}

		}
		catch (Exception exc) {
			exc.printStackTrace();
		}
		return false;
	}
}
