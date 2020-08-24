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
				System.out.println("\nEnter 3 for Customer Login");
				System.out.println("\nEnter 4 to Change Password");
				System.out.println("\nEnter 10 to EXIT");

				try {
					switch (in.nextInt()) {

					case 1:
						customer.isListFullService();
						System.out.println(
								"\nEnter the Name, Email ID, Password, Customer Type , DOB (dd-MM-yyy Pattern), Registration Amount");
						customer.addCustomerService(in.next(), in.next(), in.next(), in.next(), in.next(),
								in.nextDouble());
						break;

					case 2:
						customer.printCustomerDetailsService();
						break;

					case 3:
						System.out.println("Enter the Email ID & Password");
						customer.customerLoginService(in.next(), in.next());
						break;

					case 4:
						System.out.println("Enter the Email ID, Old Password and New Password");
						customer.changeCustomerPasswordService(in.next(), in.next(), in.next());
						break;

					case 10:
						exit = true;
						break;
					}

				} catch (Exception excpetion) {
					System.out.println(excpetion);

				} finally {
					in.nextLine();
				}
			}
		}
	}
}