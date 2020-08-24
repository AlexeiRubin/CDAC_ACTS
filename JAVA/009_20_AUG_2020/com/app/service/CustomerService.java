package com.app.service;

import static com.app.utils.CustomerValidations.*;

import java.text.ParseException;

import com.app.dao.impl.CustomerDaoImpl;
import com.app.exceptions.CustomerException;

public class CustomerService {

	public CustomerDaoImpl customerDaoImpl;

	public CustomerService(int SIZE) {
		customerDaoImpl = new CustomerDaoImpl(SIZE);
	}

	public void addCustomerService(String customerName, String customerEmailId, String customerPassword,
			String customerType, String customerDateOfBirth, double customerRegistrationAmount)
			throws CustomerException, ParseException {

		customerEmailIdValidation(customerEmailId);
		customerPasswordValidation(customerPassword);
		customerTypeValidation(customerType);
		customerDateOfBirthValidation(customerDateOfBirth);
		customerRegistrationAmountValidation(customerRegistrationAmount);

		customerDaoImpl.addCustomerToDao(customerName, customerEmailId, customerPassword, customerType,
				customerDateOfBirth, customerRegistrationAmount);
	}

	public void printCustomerDetailsService() {
		customerDaoImpl.printCustomerDetailsFromDao();
	}

	public void customerLoginService(String enteredCustomerEmailId, String enteredCustomerPassword)
			throws CustomerException {
		if (!(customerDaoImpl.customerLoginAuthenticationFromDao(enteredCustomerEmailId, enteredCustomerPassword)))
			throw new CustomerException("INVALID LOGIN");
		System.out.println("VALID LOGIN");
	}

	public void changeCustomerPasswordService(String enteredCustomerEmailId, String enteredCustomerOldPassword,
			String enteredCustomerNewPassword) throws CustomerException {
		if (!(customerDaoImpl.changeCustomerPasswordService(enteredCustomerEmailId, enteredCustomerOldPassword,
				enteredCustomerNewPassword)))
			throw new CustomerException("PASSWORD NOT UPDATED");
		System.out.println("PASSWORD CHANGED");
	}

	public void isListFullService() throws ArrayIndexOutOfBoundsException {
		if (customerDaoImpl.isListFullDao())
			throw new ArrayIndexOutOfBoundsException("CUSTOMER LIST IS FULL");
	}
}