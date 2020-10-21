package com.app.dao;

import java.sql.Date;
import java.sql.SQLException;

import com.app.entity.Customer;

public interface CustomerDao {

	Customer customerAuthentication(String customerEmail, String customerPassword) throws SQLException;

	String customerRegistration(double customerDepositAmount, String customerEmail, String customerName,
			String customerPassword, Date customerRegistrationDate, String customerRole) throws SQLException;

	String changeCustomerPassword(String customerEmail, String customerPasswordOld, String customerPasswordNew)
			throws SQLException;

	String unsubscribeCustomer(int customerId) throws SQLException;
}