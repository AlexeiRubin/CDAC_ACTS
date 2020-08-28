package com.app.service;

import com.app.dao.impl.CustomerDaoImpl;
import com.app.exceptions.CustomerException;

public class CustomerService {

	public CustomerDaoImpl customerDaoImpl;

	public CustomerService() throws CustomerException {
		customerDaoImpl = new CustomerDaoImpl();
	}

	public void printCustomerDetailsService() {
		customerDaoImpl.printCustomerDetails();
	}

	public void unsubscribeCustomerService(String enteredCustomerEmailId) throws CustomerException {
		customerDaoImpl.unsubscribeCustomer(enteredCustomerEmailId);
	}

	public void customerEmailIdExistsService(String enteredCustomerEmailId) throws CustomerException {
		customerDaoImpl.customerEmailIdExists(enteredCustomerEmailId);
	}

	public void sortUsingTreeSetService() {
		customerDaoImpl.sortUsingTreeSet();
	}

	public void sortUsingTreeSetAICService() throws CustomerException {
		customerDaoImpl.sortUsingTreeSetAIC();
	}
}