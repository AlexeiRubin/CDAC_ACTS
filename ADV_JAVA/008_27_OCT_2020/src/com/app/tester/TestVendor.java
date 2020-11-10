package com.app.tester;

import static com.app.utils.HibernateUtils.getSessionFactory;
import static java.time.LocalDate.parse;

import java.util.Scanner;

import org.hibernate.SessionFactory;

import com.app.dao.VendorDaoImpl;
import com.app.entity.Role;
import com.app.entity.Vendor;

public class TestVendor {

	public static void main(String[] args) {
		try (SessionFactory sf = getSessionFactory(); Scanner in = new Scanner(System.in);) {

			boolean exit = false;
			VendorDaoImpl vendorDao = new VendorDaoImpl();

			while (!exit) {
				System.out.println("\nEnter 1 to Register a Vendor");
				System.out.println("Enter 2 for Vendor Login");
				System.out.println(
						"Enter 3 to List Vendors registered after a specific Date & with Registraion Amount less than a Specified Amount");
				System.out.println("Enter 4 to Give Discount to Vendors Registered before a specific date");
				System.out.println("Enter 5 to EXIT");

				try {
					switch (in.nextInt()) {

					case 1:
						System.out.println(
								"\nEnter the Name, Email, Password, Registration Amount, Registration Date, Role");
						Vendor vendorEntry = new Vendor(in.next(), in.next(), in.next(), in.nextDouble(),
								parse(in.next()), Role.valueOf(in.next().toUpperCase()));
						System.out.println("Registration Status : " + vendorDao.registerVendor(vendorEntry));
						break;

					case 2:
						System.out.println("\nEnter Email and Password");
						System.out.println("LOGGED IN ==> " + vendorDao.authenticateVendor(in.next(), in.next()));
						break;

					case 3:
						System.out.println("\nEnter Registration Date(yyyy-MM-dd) and Registration Amount");
						vendorDao.getSpecificVendors(parse(in.next()), in.nextDouble())
								.forEach(vendorEntity -> System.out.println(vendorEntity));
						break;

					case 4:
						System.out.println("\nEnter Registration Date(yyyy-MM-dd) and Discount Amount");
						System.out.println(vendorDao.discountBeforeRegDate(parse(in.next()), in.nextDouble()));
						break;

					case 5:
						exit = true;
						break;
					}

				} catch (Exception e) {
					System.out.println(e);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}