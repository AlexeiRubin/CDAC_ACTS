package com.app.dao.impl;

import com.app.dao.CustomerDao;
import com.app.entity.Customer;
import com.app.exceptions.CustomerException;

public class CustomerDaoImpl implements CustomerDao {

	public static int SIZE, customerCounter;
	public static Customer[] customerDetails;

	static {
		SIZE = 0;
		customerCounter = 0;
		customerDetails = null;
	}

	public CustomerDaoImpl(int SIZE) {
		CustomerDaoImpl.SIZE = SIZE;
		customerDetails = new Customer[SIZE];
	}

	public void addCustomerToDao(String customerName, String customerEmailId, String customerPassword,
			String customerType, String customerDateOfBirth, double customerRegistrationAmount)
			throws CustomerException {

		customerDetails[customerCounter] = new Customer(customerName, customerEmailId, customerPassword, customerType,
				customerDateOfBirth, customerRegistrationAmount);
		++customerCounter;
	}

	public void printCustomerDetailsFromDao() {
		for (Customer customerEntity : customerDetails) {
			if (customerEntity != null)
				System.out.println(customerEntity);
		}
	}
}