package com.app.tester;

import java.io.IOException;
import java.util.Scanner;

import com.app.exceptions.CustomerException;
import com.app.service.CustomerService;

public class TestCustomer {

	public static void main(String[] args) throws CustomerException, ClassNotFoundException, IOException {

		try (Scanner in = new Scanner(System.in)) {

			boolean exit = false;

			CustomerService customer = new CustomerService();

			customer.readCustomerDetailsFromBinFileService();

			while (!exit) {
				System.out.println("\nEnter 1 to Login");
				System.out.println("\nEnter 2 to Pay Subscription Amount");
				System.out.println("\nEnter 3 to Store GOLD Customer Type Senior Citizen Details to a Text File ");
				System.out.println("\nEnter 4 to Add A Late Fee to Payment Defaulters");
				System.out.println("\nEnter 5 to Unsubscribe a Customer");
				System.out.println("\nEnter 6 to EXIT");

				try {
					switch (in.nextInt()) {

					case 1:
						System.out.println("Enter the Email ID & Password");
						customer.customerLoginService(in.next(), in.next());
						break;

					case 2:
						System.out.println("Enter the Email Id");
						customer.customerSubscriptionPaymentService(in.next());
						break;

					case 3:
						customer.goldTypeSeniorCitizensService();
						break;

					case 4:
						customer.customerLatePaymentPenaltyService();
						break;

					case 5:
						System.out.println("Enter the Email Id");
						customer.customerUnsubscribeService(in.next());
						break;

					case 6:
						customer.writeCustomerDetailsToBinFileService();
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