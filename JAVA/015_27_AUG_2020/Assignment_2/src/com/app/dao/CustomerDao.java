package com.app.dao;

import java.time.LocalDate;

import com.app.enums.CustomerTypeEnum;
import com.app.exceptions.CustomerException;

public interface CustomerDao {

	void addCustomer(String customerName, String customerEmailId, String customerPassword,
			CustomerTypeEnum customerType, LocalDate customerDateOfBirth, double customerRegistrationAmount)
			throws CustomerException;

	void assignCustomerShippingAddress(String enteredCustomerEmailId, String customerCityName, String customerStateName,
			String customerCountryName, int customerZipCode, String customerLandlineNumber, String customerMobileNumber)
			throws CustomerException;

	void printCustomerDetails();

	void unsubscribeCustomer(String enteredCustomerEmailId) throws CustomerException;

	void printCustomerDetailsOfSeniorCitizens();

	void sortCustomerByEmailId();
}