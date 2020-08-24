package com.app.service;

import com.app.dao.impl.CustomerDaoImpl;
import com.app.exceptions.CustomerException;
import com.app.utils.ValidationRules;

public class CustomerService {

	public CustomerDaoImpl customerDaoImpl;

	public CustomerService(int SIZE) {
		customerDaoImpl = new CustomerDaoImpl(SIZE);
	}

	public void addCustomerService(String customerName, String customerEmailId, String customerPassword,
			String customerType, String customerDateOfBirth, double customerRegistrationAmount)
			throws CustomerException {

		ValidationRules.CustomerEmailIdValidation(customerEmailId);
		ValidationRules.CustomerPasswordValidation(customerPassword);
		ValidationRules.CustomerTypeValidation(customerType);
		ValidationRules.CustomerDateOfBirthValidation(customerDateOfBirth);
		ValidationRules.CustomerRegistrationAmountValidation(customerRegistrationAmount);

		customerDaoImpl.addCustomerToDao(customerName, customerEmailId, customerPassword, customerType,
				customerDateOfBirth, customerRegistrationAmount);
	}

	public void printCustomerDetailsService() {
		customerDaoImpl.printCustomerDetailsFromDao();
	}
}