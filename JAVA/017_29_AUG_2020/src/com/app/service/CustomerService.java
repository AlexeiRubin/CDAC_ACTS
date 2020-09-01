package com.app.service;

import java.io.FileNotFoundException;
import java.io.IOException;

import com.app.dao.impl.CustomerDaoImpl;
import com.app.exceptions.CustomerException;

public class CustomerService {

	public CustomerDaoImpl customerDaoImpl;

	public CustomerService() throws CustomerException {
		customerDaoImpl = new CustomerDaoImpl();
	}

	public void customerLoginService(String enteredCustomerEmailId, String enteredCustomerPassword)
			throws CustomerException {
		customerDaoImpl.customerLoginAuthentication(enteredCustomerEmailId, enteredCustomerPassword);
	}

	public void customerSubscriptionPaymentService(String enteredCustomerEmailId) {
		customerDaoImpl.customerSubscriptionPayment(enteredCustomerEmailId);
	}

	public void customerLatePaymentPenaltyService() {
		customerDaoImpl.customerLatePaymentPenalty();
	}

	public void goldTypeSeniorCitizensService() throws FileNotFoundException {
		customerDaoImpl.goldTypeSeniorCitizens();
	}

	public void customerUnsubscribeService(String enteredCustomerEmailId) throws CustomerException {
		customerDaoImpl.customerUnsubscribe(enteredCustomerEmailId);
	}

	public void writeCustomerDetailsToBinFileService() throws IOException {
		customerDaoImpl.writeCustomerDetailsToBinFile();
	}

	public void readCustomerDetailsFromBinFileService() throws ClassNotFoundException, IOException {
		customerDaoImpl.readCustomerDetailsFromBinFile();
	}
}