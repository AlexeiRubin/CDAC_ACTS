package com.app.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtils {

	private static Connection con;

	public static Connection getDBConnection() throws ClassNotFoundException, SQLException {
		return con;
	}

	public static void createSingletonConnection(String driverClass, String dbUrl, String userName, String password)
			throws ClassNotFoundException, SQLException {

		Class.forName(driverClass);

		con = DriverManager.getConnection(dbUrl, userName, password);
	}

	public static void cleanUp() throws SQLException {
		if (con != null)
			con.close();
	}
}