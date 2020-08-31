package com.app.dao.impl;

import static com.app.utils.CollectionUtils.populateSampleCustomerData;
import static com.app.utils.CollectionUtils.populateSampleCustomerDataForMap;
import static com.app.utils.CustomerValidations.customerEmailIdExists;
import static com.app.utils.CustomerValidations.validateCustomerAge;

import java.time.LocalDate;
import java.util.HashMap;
import java.util.TreeMap;

import com.app.dao.CustomerDao;
import com.app.entity.core.Customer;
import com.app.enums.CustomerTypeEnum;
import com.app.exceptions.CustomerException;

public class CustomerDaoImpl implements CustomerDao {

	public static HashMap<String, Customer> customerDetails;

	static {
		customerDetails = null;
	}

	public CustomerDaoImpl() throws CustomerException {
		customerDetails = populateSampleCustomerDataForMap(populateSampleCustomerData());
	}

	@Override
	public void addCustomer(String customerName, String customerEmailId, String customerPassword,
			CustomerTypeEnum customerType, LocalDate customerDateOfBirth, double customerRegistrationAmount)
			throws CustomerException {

		customerDetails.putIfAbsent(customerEmailId, (new Customer(customerName, customerEmailId, customerPassword,
				customerType, customerDateOfBirth, customerRegistrationAmount)));
		System.out.println("CUSTOMER ADDED");
	}

	@Override
	public void assignCustomerShippingAddress(String enteredCustomerEmailId, String customerCityName,
			String customerStateName, String customerCountryName, int customerZipCode, String customerLandlineNumber,
			String customerMobileNumber) throws CustomerException {
		if (customerEmailIdExists(enteredCustomerEmailId, customerDetails)) {

			Customer entity = customerDetails.get(enteredCustomerEmailId);

			entity.setCustomerShippingAddress(entity.new ShippingAddress(customerCityName, customerStateName,
					customerCountryName, customerZipCode, customerLandlineNumber, customerMobileNumber));
		}
	}

	@Override
	public void printCustomerDetails() {
		System.out.println(customerDetails.values());
	}

	@Override
	public void unsubscribeCustomer(String enteredCustomerEmailId) throws CustomerException {
		if (customerEmailIdExists(enteredCustomerEmailId, customerDetails)) {
			System.out.println("UNSUBSCRIBED\n" + enteredCustomerEmailId);
			customerDetails.remove(enteredCustomerEmailId);
		}
	}

	@Override
	public void printCustomerDetailsOfSeniorCitizens() {
		for (Customer entity : customerDetails.values()) {
			if (validateCustomerAge(entity) > 55) {
				System.out.println(entity.getCustomerShippingAddress().getCustomerContactNumber());
			}
		}
	}

	@Override
	public void sortCustomerByEmailId() {
		TreeMap<String, Customer> sortedCustomerDetails = new TreeMap<>(customerDetails);
		System.out.println(sortedCustomerDetails.values());
	}
}