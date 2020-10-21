package com.app.tester;

import static com.app.utils.DBUtils.getDBConnection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class TestEmployeeDB {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {

		String sql = "select * from my_emp";

		try (Connection con = getDBConnection();
				Statement stmt = con.createStatement();
				ResultSet rst = stmt.executeQuery(sql)) {

			System.out.println("EmpID\tName\tAddress\tSalary\tDeptID\tJoin Date");

			while (rst.next())
				System.out.println(rst.getInt(1) + "\t" + rst.getString(2) + "\t" + rst.getString(3) + "\t"
						+ rst.getDouble(4) + "\t" + rst.getString(5) + "\t" + rst.getDate(6));
		}
	}
}