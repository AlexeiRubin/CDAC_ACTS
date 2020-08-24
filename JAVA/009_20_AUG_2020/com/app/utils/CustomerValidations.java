package com.app.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.app.exceptions.CustomerException;

public class CustomerValidations {

	public static SimpleDateFormat dateFormat;
	public static Date epochDate;

	static {
		dateFormat = new SimpleDateFormat("dd-MM-yyyy");
		try {
			epochDate = dateFormat.parse("01-01-1990");
		} catch (ParseException e) {
			System.out.println("INVALID DATE FORMAT");
		}
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

	public static String customerTypeValidation(String customerType) throws CustomerException {
		if (!(customerType.equalsIgnoreCase("Platinum") || customerType.equalsIgnoreCase("Gold")
				|| customerType.equalsIgnoreCase("Silver")))
			throw new CustomerException("INVALID CUSTOMER TYPE");
		return customerType;
	}

	public static Date customerDateOfBirthValidation(String customerDateOfBirth)
			throws ParseException, CustomerException {
		Date date = dateFormat.parse(customerDateOfBirth);
		if (date.before(epochDate))
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