package com.app.tester;

import static com.app.utils.CustomerValidations.customerTypeValidation;

import java.util.Scanner;

import com.app.exceptions.CustomerException;
import com.app.service.CustomerService;

public class TestCustomer {

	public static void main(String[] args) throws CustomerException {

		try (Scanner in = new Scanner(System.in)) {

			boolean exit = false;

			CustomerService customer = new CustomerService();

			while (!exit) {
				System.out.println("\nEnter 1 to Register a New Customer");
				System.out.println("\nEnter 2 to Assign Shipping Address");
				System.out.println("\nEnter 3 to Display All Customer Details");
				System.out.println("\nEnter 4 to Unsubscribe a Customer");
				System.out.println("\nEnter 5 to Display Phone Records of all Senior Citizens");
				System.out.println("\nEnter 6 to Sort Customer by Email ID");
				System.out.println("\nEnter 7 to EXIT");

				try {
					switch (in.nextInt()) {

					case 1:
						System.out.println(
								"\nEnter the Name, Email ID, Password, Customer Type , DOB (yyyy-MM-dd Pattern), Registration Amount");
						customer.addCustomerService(in.next(), in.next(), in.next(),
								customerTypeValidation(in.next().toUpperCase()), in.next(), in.nextDouble());
						break;

					case 2:
						System.out.println(
								"Enter the Email ID, City, State, Country, ZipCode, LandLine Number and Mobile Number");
						customer.assignCustomerShippingAddressService(in.next(), in.next(), in.next(), in.next(),
								in.nextInt(), in.next(), in.next());
						break;

					case 3:
						customer.printCustomerDetailsService();
						break;

					case 4:
						System.out.println("Enter the Email ID");
						customer.unsubscribeCustomerService(in.next());
						break;

					case 5:
						customer.printCustomerDetailsOfSeniorCitizensService();
						break;

					case 6:
						customer.sortCustomerByEmailIdService();
						System.out.println("\nSorted by Customer Email ID using TreeMap");
						break;

					case 7:
						exit = true;
						break;
					}

				} catch (Exception exception) {
					System.out.println(exception);

				} finally {
					in.nextLine();
				}
			}
		}
	}
}