package com.app.tester;

import java.util.Scanner;

import com.app.exceptions.CustomerException;
import com.app.service.CustomerService;

public class TestCustomer {

	public static void main(String[] args) throws CustomerException {

		try (Scanner in = new Scanner(System.in)) {

			boolean exit = false;

			CustomerService customer = new CustomerService();

			while (!exit) {
				System.out.println("\nEnter 1 to Check if a Customer Exists");
				System.out.println("\nEnter 2 to Display All Customer Details");
				System.out.println("\nEnter 3 to Unsubscribe a Customer");
				System.out.println("\nEnter 4 to Sort Customer List by Email ID");
				System.out.println("\nEnter 5 to Display Customer Details sorted by DOB & Registration Amount");
				System.out.println("\nEnter 10 to EXIT");

				try {
					switch (in.nextInt()) {

					case 1:
						System.out.println("Enter the Email ID");
						customer.customerEmailIdExistsService(in.next());
						break;

					case 2:
						customer.printCustomerDetailsService();
						break;

					case 3:
						System.out.println("Enter the Email ID");
						customer.unsubscribeCustomerService(in.next());
						break;

					case 4:
						customer.sortUsingTreeSetService();
						System.out.println("\nSorted in ascending order by Customer Email ID using TREESET");
						break;

					case 5:
						customer.sortUsingTreeSetAICService();
						System.out.println(
								"\nSorted in ascending order by Customer Date of Birth and Registration Amount using AIC");
						break;

					case 10:
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