package com.app.dao;

import java.util.Date;

import com.app.enums.CustomerTypeEnum;
import com.app.exceptions.CustomerException;

public interface CustomerDao {

	boolean isCustomerListFull();

	void addCustomer(String customerName, String customerEmailId, String customerPassword,
			CustomerTypeEnum customerType, Date customerDateOfBirth, double customerRegistrationAmount)
			throws CustomerException;

	void printCustomerDetails();

	void customerLoginAuthentication(String enteredCustomerEmailId, String enteredCustomerPassword)
			throws CustomerException;

	void changeCustomerPassword(String enteredCustomerEmailId, String enteredCustomerOldPassword,
			String enteredCustomerNewPassword) throws CustomerException;

	void assignCustomerShippingAddress(String enteredCustomerEmailId, String customerCityName, String customerStateName,
			String customerCountryName, int customerZipCode, String customerLandlineNumber,
			String customerMobileNumber);

	void customerPlaceOrder(String enteredCustomerEmailId, String productName, int productQuantity)
			throws CustomerException;
}