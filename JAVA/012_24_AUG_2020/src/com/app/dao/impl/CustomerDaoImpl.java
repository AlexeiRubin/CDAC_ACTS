package com.app.dao.impl;

import static com.app.utils.CollectionUtils.*;
import static com.app.utils.CustomerValidations.*;

import java.time.LocalDate;
import java.time.Period;
import java.util.ArrayList;

import com.app.dao.CustomerDao;
import com.app.entity.Customer;
import com.app.enums.CustomerTypeEnum;
import com.app.exceptions.CustomerException;

public class CustomerDaoImpl implements CustomerDao {

	public static ArrayList<Customer> customerDetails;

	static {
		customerDetails = null;
	}

	public CustomerDaoImpl() throws CustomerException {
		customerDetails = populateSampleCustomerData();
	}

	@Override
	public void addCustomer(String customerName, String customerEmailId, String customerPassword,
			CustomerTypeEnum customerType, LocalDate customerDateOfBirth, double customerRegistrationAmount)
			throws CustomerException {

		customerDuplicateEntryValidation(new Customer(customerEmailId), customerDetails);

		customerDetails.add(new Customer(customerName, customerEmailId, customerPassword, customerType,
				customerDateOfBirth, customerRegistrationAmount));
		System.out.println("CUSTOMER ADDED");
	}

	public void printCustomerDetails() {
		for (Customer customerEntity : customerDetails) {
			if (customerEntity != null)
				System.out.println(customerEntity);
		}
	}

	public void customerLoginAuthentication(String enteredCustomerEmailId, String enteredCustomerPassword)
			throws CustomerException {

		System.out.println("VALID LOGIN\n" + customerLoginAuthenticationValidation(enteredCustomerEmailId,
				enteredCustomerPassword, customerDetails));
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

		for (int i = 0; i < customerDetails.size(); ++i) {
			if (customerDetails.contains(new Customer(enteredCustomerEmailId))) {
				if (customerDetails.get(i).getCustomerEmailId().equalsIgnoreCase(enteredCustomerEmailId)) {
					customerDetails.get(i)
							.setCustomerShippingAddress(customerDetails.get(i).new ShippingAddress(customerCityName,
									customerStateName, customerCountryName, customerZipCode, customerLandlineNumber,
									customerMobileNumber));
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

	public void applyCustomerDiscount(double customerDiscountPercentage) {
		for (int i = 0; i < customerDetails.size(); ++i) {
			Period timePeriod = Period.between(customerDetails.get(i).getCustomerDateOfBirth(), LocalDate.now());
			if (timePeriod.getYears() > 55)
				customerDetails.get(i)
						.setCustomerRegistrationAmount(customerDetails.get(i).getCustomerRegistrationAmount()
								* (100 - customerDiscountPercentage) / 100);
		}
	}

	public void unsubscribeCustomer(String enteredCustomerEmailId) throws CustomerException {
		Customer objRef = customerEmailIdExists(enteredCustomerEmailId, customerDetails);
		System.out.println("UNSUBSCRIBED\n" + objRef);
		customerDetails.remove(objRef);
	}
}