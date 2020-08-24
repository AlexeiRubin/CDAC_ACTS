package com.app.dao.impl;

import static com.app.utils.CustomerValidations.*;

import java.util.Date;

import com.app.dao.CustomerDao;
import com.app.entity.Customer;
import com.app.enums.CustomerTypeEnum;
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

	public boolean isCustomerListFull() {
		if (customerCounter != SIZE)
			return false;
		else
			return true;
	}

	@Override
	public void addCustomer(String customerName, String customerEmailId, String customerPassword,
			CustomerTypeEnum customerType, Date customerDateOfBirth, double customerRegistrationAmount)
			throws CustomerException {

		customerDetails[customerCounter] = new Customer(customerName, customerEmailId, customerPassword, customerType,
				customerDateOfBirth, customerRegistrationAmount);
		++customerCounter;
	}

	public void printCustomerDetails() {
		for (Customer customerEntity : customerDetails) {
			if (customerEntity != null)
				System.out.println(customerEntity);
		}
	}

	public void customerLoginAuthentication(String enteredCustomerEmailId, String enteredCustomerPassword)
			throws CustomerException {
		customerLoginAuthenticationValidation(enteredCustomerEmailId, enteredCustomerPassword, customerDetails);
		System.out.println("VALID LOGIN");
	}

	public void changeCustomerPassword(String enteredCustomerEmailId, String enteredCustomerOldPassword,
			String enteredCustomerNewPassword) throws CustomerException {
		Customer customerEntity = changeCustomerPasswordValidation(enteredCustomerEmailId, enteredCustomerOldPassword,
				customerDetails);
		customerEntity.setCustomerPassword(enteredCustomerNewPassword);
		System.out.println("PASSWORD UPDATED");
	}

	public void assignCustomerShippingAddress(String enteredCustomerEmailId, String customerCityName,
			String customerStateName, String customerCountryName, int customerZipCode, String customerLandlineNumber,
			String customerMobileNumber) {

		for (int i = 0; i < customerDetails.length; ++i) {
			if (customerDetails[i] != null) {
				if (customerDetails[i].getCustomerEmailId().equalsIgnoreCase(enteredCustomerEmailId)) {
					customerDetails[i].setCustomerShippingAddress(customerDetails[i].new ShippingAddress(
							customerCityName, customerStateName, customerCountryName, customerZipCode,
							customerLandlineNumber, customerMobileNumber));
				}
			}
		}
	}

	public void customerPlaceOrder(String enteredCustomerEmailId, String productName, int productQuantity)
			throws CustomerException {
		Customer customerEntity = customerShippingAddressValidation(enteredCustomerEmailId, customerDetails);
		System.out.println("Hello, " + customerEntity.getCustomerName() + ". Your " + productName
				+ " will be delivered within next 3 working days.");
	}
}