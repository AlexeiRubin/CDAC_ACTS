package com.app.service;

import static com.app.utils.CustomerValidations.customerDateOfBirthValidation;
import static com.app.utils.CustomerValidations.customerEmailIdValidation;
import static com.app.utils.CustomerValidations.customerPasswordValidation;
import static com.app.utils.CustomerValidations.customerRegistrationAmountValidation;

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

	public void assignCustomerShippingAddressService(String enteredCustomerEmailId, String customerCityName,
			String customerStateName, String customerCountryName, int customerZipCode, String customerLandlineNumber,
			String customerMobileNumber) throws CustomerException {
		customerDaoImpl.assignCustomerShippingAddress(enteredCustomerEmailId, customerCityName, customerStateName,
				customerCountryName, customerZipCode, customerLandlineNumber, customerMobileNumber);
	}

	public void printCustomerDetailsService() {
		customerDaoImpl.printCustomerDetails();
	}

	public void unsubscribeCustomerService(String enteredCustomerEmailId) throws CustomerException {
		customerDaoImpl.unsubscribeCustomer(enteredCustomerEmailId);
	}

	public void printCustomerDetailsOfSeniorCitizensService() {
		customerDaoImpl.printCustomerDetailsOfSeniorCitizens();
	}

	public void sortCustomerByEmailIdService() {
		customerDaoImpl.sortCustomerByEmailId();
	}
}