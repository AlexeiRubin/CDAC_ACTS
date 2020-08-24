package com.app.dao;

import com.app.exceptions.CustomerException;

public interface CustomerDao {

	void addCustomerToDao(String customerName, String customerEmailId, String customerPassword, String customerType,
			String customerDateOfBirth, double customerRegistrationAmount) throws CustomerException;

	void printCustomerDetailsFromDao();
}