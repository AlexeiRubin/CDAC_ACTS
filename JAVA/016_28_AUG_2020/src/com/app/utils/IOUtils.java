package com.app.utils;

import static com.app.utils.CustomerValidations.validateCustomerAge;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;

import com.app.entity.core.Customer;

public class IOUtils {

	public static void writeGoldTypeSeniorCitizenDetails(Map<String, Customer> customerDetails)
			throws FileNotFoundException {
		try (PrintWriter pw = new PrintWriter(new File("GoldTypeSeniorCitizens"))) {
			HashMap<String, ArrayList<String>> goldTypeSeniorCitizens = new HashMap<>();
			for (Customer entity : customerDetails.values()) {
				if (entity.getCustomerType().toString().equalsIgnoreCase("gold") && validateCustomerAge(entity) > 55)
					goldTypeSeniorCitizens.put(entity.getCustomerName(),
							entity.getCustomerShippingAddress().getCustomerContactNumber());
			}
			pw.println(goldTypeSeniorCitizens);
		}
	}

	public static void writeSortedCustomerDetailsByRegistrationAmount(Map<String, Customer> customerDetails)
			throws FileNotFoundException {
		try (PrintWriter pw = new PrintWriter(new File("CustomerDetailsSortedByRegAmt"))) {
			ArrayList<Customer> sortedCustomerDetails = new ArrayList<>(customerDetails.values());

			Collections.sort(sortedCustomerDetails, new Comparator<Customer>() {

				@Override
				public int compare(Customer obj1, Customer obj2) {
					if (obj1.getCustomerRegistrationAmount() > obj2.getCustomerRegistrationAmount())
						return 1;
					else if (obj1.getCustomerRegistrationAmount() == obj2.getCustomerRegistrationAmount())
						return 0;
					return -1;
				}
			});
			for (Customer entity : sortedCustomerDetails)
				pw.println(entity);
		}
	}
}