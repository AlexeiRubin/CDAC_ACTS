package com.app.dao;

import static com.app.utils.DBUtils.getDBConnection;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.app.entity.Customer;

public class CustomerDaoImpl implements CustomerDao {

	private Connection con;
	private PreparedStatement pstmt1, pstmt2, pstmt3, pstmt4;

	public CustomerDaoImpl() throws ClassNotFoundException, SQLException {

		con = getDBConnection();
		pstmt1 = con.prepareStatement("SELECT * FROM my_customers WHERE email=? AND password=?");
		pstmt2 = con.prepareStatement("INSERT INTO my_customers VALUES(DEFAULT,?,?,?,?,?,?)");
		pstmt3 = con.prepareStatement("UPDATE my_customers SET password=? WHERE email=? AND password=?");
		pstmt4 = con.prepareStatement("DELETE FROM my_customers WHERE id=?");
	}

	@Override
	public Customer customerAuthentication(String customerEmail, String customerPassword) throws SQLException {
		pstmt1.setString(1, customerEmail);
		pstmt2.setString(2, customerPassword);

		try (ResultSet rst = pstmt1.executeQuery()) {
			if (rst.next()) {
				return new Customer(rst.getInt(1), rst.getDouble(2), customerEmail, rst.getString(4), customerPassword,
						rst.getDate(6), rst.getString(7));
			}
		}
		return null;
	}

	@Override
	public String customerRegistration(double customerDepositAmount, String customerEmail, String customerName,
			String customerPassword, Date customerRegistrationDate, String customerRole) throws SQLException {

		pstmt2.setDouble(1, customerDepositAmount);
		pstmt2.setString(2, customerEmail);
		pstmt2.setString(3, customerName);
		pstmt2.setString(4, customerPassword);
		pstmt2.setDate(5, customerRegistrationDate);
		pstmt2.setString(6, customerRole);

		int insert = pstmt2.executeUpdate();

		if (insert == 1)
			return "REGISTRATION SUCCESSFUL";

		return "REGISTRATION FAILED";
	}

	@Override
	public String changeCustomerPassword(String customerEmail, String customerPasswordOld, String customerPasswordNew)
			throws SQLException {

		pstmt3.setString(1, customerPasswordNew);
		pstmt3.setString(2, customerEmail);
		pstmt3.setString(3, customerPasswordOld);

		int update = pstmt3.executeUpdate();

		if (update == 1)
			return "PASSWORD CHANGE SUCCESSFUL";

		return "PASSWORD CHANGE FAILED";
	}

	@Override
	public String unsubscribeCustomer(int customerId) throws SQLException {

		pstmt4.setInt(1, customerId);

		int delete = pstmt4.executeUpdate();

		if (delete == 1)
			return "UNSUBSCRIBE SUCCESSFUL";

		return "UNSUBSCRIBE FAILED";
	}

	public void cleanUp() throws SQLException {
		if (pstmt1 != null)
			pstmt1.close();

		if (pstmt2 != null)
			pstmt2.close();

		if (pstmt3 != null)
			pstmt3.close();

		if (pstmt4 != null)
			pstmt4.close();

		if (con != null)
			con.close();

	}
}