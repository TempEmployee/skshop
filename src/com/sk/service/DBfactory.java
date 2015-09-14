package com.sk.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBfactory {
	private final static String  URL = "jdbc:mysql://localhost:3306/shopping";
	private final static String USERNAME = "root";
	private final static String PASSWORD = "123456";
	
	public static Connection getConnection(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection cn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
			return cn;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
