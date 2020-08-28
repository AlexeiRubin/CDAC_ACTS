package com.app.dao;

import com.app.exceptions.CustomerException;

public interface CustomerDao {

	void customerEmailIdExists(String enteredCustomerEmailId) throws CustomerException;

	void printCustomerDetails();

	void unsubscribeCustomer(String enteredCustomerEmailId) throws CustomerException;

	void sortUsingTreeSet();

	void sortUsingTreeSetAIC() throws CustomerException;
}