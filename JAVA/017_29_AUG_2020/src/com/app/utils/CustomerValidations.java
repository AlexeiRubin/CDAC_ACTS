package com.app.utils;

import static java.time.LocalDate.now;
import static java.time.LocalDate.parse;

import java.time.LocalDate;
import java.time.Period;
import java.util.HashMap;

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

	public static boolean customerEmailIdExists(String enteredCustomerEmailId,
			HashMap<String, Customer> customerDetails) throws CustomerException {
		if (!customerDetails.containsKey(enteredCustomerEmailId))
			throw new CustomerException("EMAIL ID DOES NOT EXIST");
		return true;
	}

	public static int validateCustomerAge(Customer customerDetail) {
		return Period.between(customerDetail.getCustomerDateOfBirth(), now()).getYears();
	}

	public static Customer customerLoginAuthenticationValidation(String enteredCustomerEmailId,
			String enteredCustomerPassword, HashMap<String, Customer> customerDetails) throws CustomerException {
		if (customerEmailIdExists(enteredCustomerEmailId, customerDetails)) {
			if (!customerDetails.get(enteredCustomerEmailId).getCustomerPassword().equals(enteredCustomerPassword))
				throw new CustomerException("INVALID LOGIN");
		}
		return customerDetails.get(enteredCustomerPassword);
	}
}