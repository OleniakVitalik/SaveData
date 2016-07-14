package com.connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManagers {
	static private Connection connection = null;

	static public Connection getConnection() {
		if (connection == null) {
			String ur = "jdbc:mysql://localhost:3306/Data?useSSL=false";
			String us = "root";
			String pas = "root";

			try {

				// Class cl4 = Class.forName("com.homePages.HomePages");
				// Class cl = Class.forName("com.mysql.jdbc.Driver");
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			try {
				connection = (Connection) DriverManager.getConnection(ur, us, pas);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return connection;

	}

	public static void main(String[] args) {
		getConnection();
	}
}
