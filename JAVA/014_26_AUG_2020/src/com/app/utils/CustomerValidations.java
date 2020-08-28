package com.app.utils;

import static java.time.LocalDate.parse;

import java.time.LocalDate;

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
}