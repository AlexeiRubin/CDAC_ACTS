package com.app.service;

import static com.app.utils.CustomerValidations.*;

import java.text.ParseException;

import com.app.dao.impl.CustomerDaoImpl;
import com.app.enums.CustomerTypeEnum;
import com.app.exceptions.CustomerException;

public class CustomerService {

	public CustomerDaoImpl customerDaoImpl;

	public CustomerService() throws CustomerException {
		customerDaoImpl = new CustomerDaoImpl();
	}

	public void addCustomerService(String customerName, String customerEmailId, String customerPassword,
			CustomerTypeEnum customerType, String customerDateOfBirth, double customerRegistrationAmount)
			throws CustomerException, ParseException {

		customerDaoImpl.addCustomer(customerName, customerEmailIdValidation(customerEmailId),
				customerPasswordValidation(customerPassword), customerType,
				customerDateOfBirthValidation(customerDateOfBirth),
				customerRegistrationAmountValidation(customerRegistrationAmount));
	}

	public void printCustomerDetailsService() {
		customerDaoImpl.printCustomerDetails();
	}

	public void customerLoginService(String enteredCustomerEmailId, String enteredCustomerPassword)
			throws CustomerException {
		customerDaoImpl.customerLoginAuthentication(enteredCustomerEmailId, enteredCustomerPassword);
	}

	public void changeCustomerPasswordService(String enteredCustomerEmailId, String enteredCustomerOldPassword,
			String enteredCustomerNewPassword) throws CustomerException {
		customerDaoImpl.changeCustomerPassword(enteredCustomerEmailId, enteredCustomerOldPassword,
				enteredCustomerNewPassword);
	}

	public void assignCustomerShippingAddressService(String enteredCustomerEmailId, String customerCityName,
			String customerStateName, String customerCountryName, int customerZipCode, String customerLandlineNumber,
			String customerMobileNumber) {
		customerDaoImpl.assignCustomerShippingAddress(enteredCustomerEmailId, customerCityName, customerStateName,
				customerCountryName, customerZipCode, customerLandlineNumber, customerMobileNumber);
	}

	public void customerPlaceOrderService(String enteredCustomerEmailId, String productName, int productQuantity)
			throws CustomerException {
		customerDaoImpl.customerPlaceOrder(enteredCustomerEmailId, productName, productQuantity);
	}

	public void applyCustomerDiscountService(double customerDiscountPercentage) {
		customerDaoImpl.applyCustomerDiscount(customerDiscountPercentage);
	}

	public void unsubscribeCustomerService(String enteredCustomerEmailId) throws CustomerException {
		customerDaoImpl.unsubscribeCustomer(enteredCustomerEmailId);
	}
}