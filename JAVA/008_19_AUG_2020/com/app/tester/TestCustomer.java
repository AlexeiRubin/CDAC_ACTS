package com.app.tester;

import java.util.Scanner;

import com.app.exceptions.CustomerException;
import com.app.service.CustomerService;

public class TestCustomer {

	public static void main(String[] args) throws CustomerException {

		try (Scanner in = new Scanner(System.in)) {

			boolean exit = false;

			System.out.println("Enter the Number of Customers");
			CustomerService customer = new CustomerService(in.nextInt());

			while (!exit) {
				System.out.println("\nEnter 1 to Register a New Customer");
				System.out.println("\nEnter 2 to Display All Customer Details");
				System.out.println("\nEnter 10 to EXIT");

				switch (in.nextInt()) {

				case 1:
					try {
						System.out.println(
								"\nEnter the Name, Email ID, Password, Customer Type , DOB (dd-MM-yyy Pattern), Registration Amount");
						customer.addCustomerService(in.next(), in.next(), in.next(), in.next(), in.next(),
								in.nextDouble());

					} catch (CustomerException excpetion) {
						System.out.println(excpetion);

					} finally {
						in.nextLine();
					}
					break;

				case 2:
					customer.printCustomerDetailsService();
					break;

				case 10:
					exit = true;
					break;
				}
			}
		}
	}
}