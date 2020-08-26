package com.app.entity.comparators;

import java.util.Comparator;

import com.app.entity.core.Customer;

public class CustomerDateOfBirthAndCityNameComparator implements Comparator<Customer> {

	@Override
	public int compare(Customer obj1, Customer obj2) {
		int returnValue = obj1.getCustomerDateOfBirth().compareTo(obj2.getCustomerDateOfBirth());
		if (returnValue == 0)
			return obj1.getCustomerShippingAddress().getCustomerCity()
					.compareTo(obj2.getCustomerShippingAddress().getCustomerCity());
		return returnValue;
	}
}