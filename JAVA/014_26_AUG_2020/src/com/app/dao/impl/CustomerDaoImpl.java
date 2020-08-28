package com.app.dao.impl;

import static com.app.utils.CollectionUtils.populateSampleCustomerData;
import static com.app.utils.CollectionUtils.populateSampleCustomerDataForSet;

import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.TreeSet;

import com.app.dao.CustomerDao;
import com.app.entity.core.Customer;
import com.app.exceptions.CustomerException;

public class CustomerDaoImpl implements CustomerDao {

	public static HashSet<Customer> customerDetails;

	static {
		customerDetails = null;
	}

	public CustomerDaoImpl() throws CustomerException {
		customerDetails = populateSampleCustomerDataForSet(populateSampleCustomerData());
	}

	@Override
	public void customerEmailIdExists(String enteredCustomerEmailId) throws CustomerException {
		if (!customerDetails.contains(new Customer(enteredCustomerEmailId)))
			throw new CustomerException("EMAIL ID DOES NOT EXIST");
		System.out.println("CUSTOMER " + enteredCustomerEmailId + " EXISTS");
	}

	@Override
	public void printCustomerDetails() {
		Iterator<Customer> itr_customerDetails = customerDetails.iterator();
		while (itr_customerDetails.hasNext())
			System.out.println(itr_customerDetails.next());
	}

	@Override
	public void unsubscribeCustomer(String enteredCustomerEmailId) throws CustomerException {
		customerDetails.remove(new Customer(enteredCustomerEmailId));
		System.out.println("UNSUBSCRIBED");
	}

	@Override
	public void sortUsingTreeSet() {
		TreeSet<Customer> customerDetailsSorted = new TreeSet<>(customerDetails);
		Iterator<Customer> itr_customerDetails = customerDetailsSorted.iterator();
		while (itr_customerDetails.hasNext())
			System.out.println(itr_customerDetails.next());
	}

	@Override
	public void sortUsingTreeSetAIC() throws CustomerException {
		TreeSet<Customer> customerDetailsSorted = new TreeSet<>(new Comparator<Customer>() {
			@Override
			public int compare(Customer obj1, Customer obj2) {
				int returnValueDOB = obj1.getCustomerDateOfBirth().compareTo(obj2.getCustomerDateOfBirth());
				if (returnValueDOB == 0) {
					if (obj1.getCustomerRegistrationAmount() >= obj2.getCustomerRegistrationAmount())
						return 1;
					else if (obj1.getCustomerRegistrationAmount() <= obj2.getCustomerRegistrationAmount())
						return -1;
					else
						return obj1.getCustomerEmailId().compareTo(obj2.getCustomerEmailId());
				}
				return returnValueDOB;
			}
		});

		customerDetailsSorted.addAll(populateSampleCustomerData());

		Iterator<Customer> itr_customerDetails = customerDetailsSorted.iterator();
		while (itr_customerDetails.hasNext())
			System.out.println(itr_customerDetails.next());
	}
}