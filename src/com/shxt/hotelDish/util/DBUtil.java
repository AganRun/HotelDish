package com.shxt.hotelDish.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtil {

	
	/**
	 * 
	 * @return
	 * @throws ClassNotFoundException 
	 */
	public static Connection getDBConn() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/hotal", "root", "root");
	}
	
	/**
	 * @param conn
	 * @throws SQLException
	 */
	public static void closeDBConn(Connection conn) throws SQLException{
		if(conn != null){
			conn.close();
		}
	}
	
	public static void closeStatement(Statement stat) throws SQLException{
		if(stat != null){
			stat.close();
		}
	}
	
	public static void closeResultSet(ResultSet rs) throws SQLException{
		if(rs != null){
			rs.close();
		}
	}
	
}
