package com.app.utils;

import static com.app.utils.CustomerValidations.validateCustomerAge;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
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

	public static void writeCustomerDetails(HashMap<String, Customer> customerDetails) throws IOException {
		try (ObjectOutputStream out = new ObjectOutputStream(new FileOutputStream("CustomerDetails"))) {
			out.writeObject(customerDetails);
		}
	}

	@SuppressWarnings("unchecked")
	public static HashMap<String, Customer> readCustomerDetails() throws IOException, ClassNotFoundException {
		File fileRef = new File("CustomerDetails");
		if (fileRef.exists() && fileRef.isFile() && fileRef.canRead()) {
			try (ObjectInputStream in = new ObjectInputStream(new FileInputStream(fileRef))) {
				return (HashMap<String, Customer>) in.readObject();
			}
		}
		return new HashMap<>();
	}
}