package com.app.tester;

import java.sql.Date;
import java.sql.SQLException;
import java.util.Scanner;

import com.app.dao.CustomerDaoImpl;
import com.app.entity.Customer;

public class TestCustomer {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		try (Scanner in = new Scanner(System.in)) {

			CustomerDaoImpl customerDaoObj = new CustomerDaoImpl();
			boolean exit = false;

			while (!exit) {
				System.out.println("Enter 1 for Customer LOGIN");
				System.out.println("Enter 2 for Customer REGISTRATION");
				System.out.println("Enter 3 for PASSWORD Change");
				System.out.println("Enter 4 to UNSUBSCRIBE");
				System.out.println("Enter 5 to EXIT\n");

				try {
					switch (in.nextInt()) {
					case 1:
						System.out.println("Enter the Email and Password");
						Customer customer = customerDaoObj.customerAuthentication(in.next(), in.next());

						if (customer == null) {
							System.out.println("INVALID EMAIL OR PASSWORD");
							break;
						}

						System.out.println(customer);
						break;

					case 2:
						System.out.println(
								"Enter the Deposit Amount, Customer Email, Customer Name, Customer Password, Registration Date, Customer Role");

						System.out.println(customerDaoObj.customerRegistration(in.nextDouble(), in.next(), in.next(),
								in.next(), Date.valueOf(in.next()), in.next()));
						break;

					case 3:
						System.out.println("Enter the Email, Old Pasword and New Password");
						System.out.println(customerDaoObj.changeCustomerPassword(in.next(), in.next(), in.next()));
						break;

					case 4:
						System.out.println("Enter the Customer ID");
						System.out.println(customerDaoObj.unsubscribeCustomer(in.nextInt()));
						break;

					case 5:
						customerDaoObj.cleanUp();
						exit = true;
						break;
					}

				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}
}