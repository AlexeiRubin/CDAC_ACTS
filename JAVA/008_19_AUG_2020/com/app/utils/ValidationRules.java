package com.app.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.app.exceptions.CustomerException;

public class ValidationRules {

	public static String CustomerEmailIdValidation(String customerEmailId) throws CustomerException {
		if (customerEmailId.contains("@") && customerEmailId.endsWith(".com"))
			return customerEmailId;
		else
			throw new CustomerException("INVALID EMAIL ID");
	}

	public static String CustomerPasswordValidation(String customerPassword) throws CustomerException {
		if (customerPassword.length() >= 8)
			return customerPassword;
		else
			throw new CustomerException("INVALID PASSWORD");
	}

	public static String CustomerTypeValidation(String customerType) throws CustomerException {
		if (customerType.equalsIgnoreCase("Platinum") || customerType.equalsIgnoreCase("Gold")
				|| customerType.equalsIgnoreCase("Silver"))
			return customerType;
		else
			throw new CustomerException("INVALID CUSTOMER TYPE");
	}

	public static Date CustomerDateOfBirthValidation(String customerDateOfBirth) throws CustomerException {
		Date formattedDate = parseStringDate(customerDateOfBirth);
		Date validationDate = parseStringDate("01-01-1990");

		if (formattedDate.after(validationDate))
			return formattedDate;
		else
			throw new CustomerException("INVALID DATE OF BIRTH");
	}

	private static Date parseStringDate(String customerDateOfBirth) throws CustomerException {
		try {
			SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
			Date formattedDate = dateFormat.parse(customerDateOfBirth);
			return formattedDate;
		} catch (ParseException e) {
			throw new CustomerException("DATE CANNOT BE PARSED");
		}
	}

	public static double CustomerRegistrationAmountValidation(double customerRegistrationAmount)
			throws CustomerException {
		if ((customerRegistrationAmount > 0) && ((customerRegistrationAmount % 500) == 0))
			return customerRegistrationAmount;
		else
			throw new CustomerException("INVALID REGISTRATION AMOUNT");
	}

}