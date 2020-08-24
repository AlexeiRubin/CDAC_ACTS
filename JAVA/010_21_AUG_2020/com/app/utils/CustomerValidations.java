package com.app.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.app.entity.Customer;
import com.app.enums.CustomerTypeEnum;
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

	public static CustomerTypeEnum customerTypeValidation(String customerType) throws CustomerException {
		for (CustomerTypeEnum customerTypeValues : CustomerTypeEnum.values()) {
			if (customerTypeValues.equals(customerType))
				return CustomerTypeEnum.valueOf(customerType);
		}
		throw new CustomerException("INVALID CUSTOMER TYPE");
	}

	public static void customerLoginAuthenticationValidation(String enteredCustomerEmailId,
			String enteredCustomerPassword, Customer customerDetails[]) throws CustomerException {
		for (Customer customerEntity : customerDetails) {
			if (customerEntity != null) {
				if ((customerEntity.getCustomerEmailId()).equalsIgnoreCase(enteredCustomerEmailId)
						&& (customerEntity.getCustomerPassword()).equals(enteredCustomerPassword))
					return;
			}
		}
		throw new CustomerException("INVALID LOGIN");
	}

	public static Customer changeCustomerPasswordValidation(String enteredCustomerEmailId,
			String enteredCustomerOldPassword, Customer customerDetails[]) throws CustomerException {
		for (Customer customerEntity : customerDetails) {
			if (customerEntity != null) {
				if ((customerEntity.getCustomerEmailId()).equalsIgnoreCase(enteredCustomerEmailId)
						&& (customerEntity.getCustomerPassword()).equals(enteredCustomerOldPassword))
					return customerEntity;
			}
		}
		throw new CustomerException("PASSWORD NOT UPDATED");
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

	public static Customer customerShippingAddressValidation(String enteredCustomerEmailId, Customer customerDetails[])
			throws CustomerException {
		for (Customer customerEntity : customerDetails) {
			if (customerEntity.getCustomerEmailId().equalsIgnoreCase(enteredCustomerEmailId)
					&& customerEntity.getCustomerShippingAddress() != null) {
				return customerEntity;
			}
		}
		throw new CustomerException("Can't Place Order, Assign An Address First");
	}
}