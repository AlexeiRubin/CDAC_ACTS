package com.app.dao;

import java.io.FileNotFoundException;
import java.io.IOException;

import com.app.exceptions.CustomerException;

public interface CustomerDao {

	void customerLoginAuthentication(String enteredCustomerEmailId, String enteredCustomerPassword)
			throws CustomerException;

	void customerSubscriptionPayment(String enteredCustomerEmailId);

	void customerLatePaymentPenalty();

	void goldTypeSeniorCitizens() throws FileNotFoundException;

	void customerUnsubscribe(String enteredCustomerEmailId) throws CustomerException;

	void writeCustomerDetailsToBinFile() throws IOException;

	void readCustomerDetailsFromBinFile() throws ClassNotFoundException, IOException;
}