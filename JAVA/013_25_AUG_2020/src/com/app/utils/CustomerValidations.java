package com.app.utils;

import static java.time.LocalDate.parse;

import java.time.LocalDate;
import java.util.ArrayList;

import com.app.entity.core.Customer;
import com.app.enums.CustomerTypeEnum;
import com.app.exceptions.CustomerException;

public class CustomerValidations {

	public static LocalDate epochDate;

	static {
		epochDate = parse("1950-01-01");
	}

	public static String customerEmailIdValidation(String customerEmailId) throws CustomerException {
		if (!(customerEmailId.contains("@") && customerEmailId.endsWith(".com")))
			throw new CustomerException("INVALID EMAIL ID");
		return customerEmailId;
	}

	public static String customerPasswordValidation(String customerPassword) throws CustomerException {
		if (!(customerPassword.length() >= 8))
			throw new CustomerException("INVALID PASSWORD");
		return customerPassword;
	}

	public static CustomerTypeEnum customerTypeValidation(String customerType) throws CustomerException {
		for (CustomerTypeEnum customerTypeValues : CustomerTypeEnum.values()) {
			if (customerTypeValues.name().equalsIgnoreCase(customerType))
				return CustomerTypeEnum.valueOf(customerType);
		}
		throw new CustomerException("INVALID CUSTOMER TYPE");
	}

	public static LocalDate customerDateOfBirthValidation(String customerDateOfBirth) throws CustomerException {
		LocalDate date = parse(customerDateOfBirth);
		if (date.isBefore(epochDate))
			throw new CustomerException("DATE ENTERED BEFORE EPOCH");
		return date;
	}

	public static double customerRegistrationAmountValidation(double customerRegistrationAmount)
			throws CustomerException {
		if (!((customerRegistrationAmount > 0) && ((customerRegistrationAmount % 500) == 0)))
			throw new CustomerException("INVALID REGISTRATION AMOUNT");
		return customerRegistrationAmount;
	}

	public static Customer customerEmailIdExists(String enteredCustomerEmailId, ArrayList<Customer> customerDetails)
			throws CustomerException {
		int index = customerDetails.indexOf(new Customer(enteredCustomerEmailId));
		if (index == -1)
			throw new CustomerException("EMAIL ID DOES NOT EXIST");
		return customerDetails.get(index);
	}

	public static void customerDuplicateEntryValidation(Customer objRef, ArrayList<Customer> customerDetails)
			throws CustomerException {
		if (customerDetails.contains(objRef))
			throw new CustomerException("DUPLICATE ENTRY");
	}

	public static Customer customerLoginAuthenticationValidation(String enteredCustomerEmailId,
			String enteredCustomerPassword, ArrayList<Customer> customerDetails) throws CustomerException {
		Customer customerEntity = customerEmailIdExists(enteredCustomerEmailId, customerDetails);
		if (!customerEntity.getCustomerPassword().equals(enteredCustomerPassword))
			throw new CustomerException("INVALID LOGIN");
		return customerEntity;
	}

	public static Customer changeCustomerPasswordValidation(String enteredCustomerEmailId,
			String enteredCustomerOldPassword, ArrayList<Customer> customerDetails) throws CustomerException {
		Customer customerEntity = customerEmailIdExists(enteredCustomerEmailId, customerDetails);
		if (!customerEntity.getCustomerPassword().equals(enteredCustomerOldPassword))
			throw new CustomerException("PASSWORD NOT UPDATED");
		return customerEntity;

	}

	public static Customer customerShippingAddressValidation(String enteredCustomerEmailId,
			ArrayList<Customer> customerDetails) throws CustomerException {
		Customer customerEntity = customerEmailIdExists(enteredCustomerEmailId, customerDetails);
		if (customerEntity.getCustomerShippingAddress().equals(null))
			throw new CustomerException("Can't Place Order, Assign An Address First");
		return customerEntity;
	}
}