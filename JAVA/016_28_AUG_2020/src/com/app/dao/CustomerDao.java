package com.app.dao;

import java.io.FileNotFoundException;

import com.app.exceptions.CustomerException;

public interface CustomerDao {

	void customerLoginAuthentication(String enteredCustomerEmailId, String enteredCustomerPassword)
			throws CustomerException;

	void customerSubscriptionPayment(String enteredCustomerEmailId);

	void customerLatePaymentPenalty();

	void goldTypeSeniorCitizens() throws FileNotFoundException;

	void customerDetailsSortedByRegAmt() throws FileNotFoundException;
}