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
				System.out.println("\nEnter 2 to Display All Customer Details");
				System.out.println("\nEnter 3 for Customer Login");
				System.out.println("\nEnter 4 to Change Password");
				System.out.println("\nEnter 5 to Assign Shipping Address");
				System.out.println("\nEnter 6 to Place an Order");
				System.out.println("\nEnter 7 to Offer Discount to Senior Citizens");
				System.out.println("\nEnter 8 to Unsubscribe a Customer");
				System.out.println("\nEnter 9 to Sort Customer List");
				System.out.println("\nEnter 10 to EXIT");

				try {
					switch (in.nextInt()) {

					case 1:
						System.out.println(
								"\nEnter the Name, Email ID, Password, Customer Type , DOB (yyyy-MM-dd Pattern), Registration Amount");
						customer.addCustomerService(in.next(), in.next(), in.next(),
								customerTypeValidation(in.next().toUpperCase()), in.next(), in.nextDouble());
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

					case 5:
						System.out.println(
								"Enter the Email ID, City, State, Country, ZipCode, LandLine Number and Mobile Number");
						customer.assignCustomerShippingAddressService(in.next(), in.next(), in.next(), in.next(),
								in.nextInt(), in.next(), in.next());
						break;

					case 6:
						System.out.println("Enter the Email ID, Product Name and Product Quantity");
						customer.customerPlaceOrderService(in.next(), in.next(), in.nextInt());
						break;

					case 7:
						System.out.println("Enter the Discount %age");
						customer.applyCustomerDiscountService(in.nextDouble());
						break;

					case 8:
						System.out.println("Enter the Email ID");
						customer.unsubscribeCustomerService(in.next());
						break;

					case 9:
						System.out.println("\nEnter 1 to Sort by Customer Email ID");
						System.out.println("\nEnter 2 to Sort by Customer Date of Birth & Customer Type");
						System.out.println("\nEnter 3 to Sort by Customer Date of Birth & Customer's City");

						switch (in.nextInt()) {

						case 1:
							customer.sortByCustomerEmailIdService();
							System.out.println("\nSorted in ascending order by Customer Email ID");
							break;

						case 2:
							customer.sortByCustomerDateOfBirthAndCustomerTypeService();
							System.out.println("\nSorted in ascending order by Customer Date of Birth & Customer Type");
							break;

						case 3:
							customer.sortByCustomerDateOfBirthAndCustomerCityService();
							System.out.println("\nSorted in ascending order by Date of Birth & Customer's City");
							break;
						}
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