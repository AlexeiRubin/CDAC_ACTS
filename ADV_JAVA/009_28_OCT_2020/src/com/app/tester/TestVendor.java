package com.app.tester;

import static com.app.utils.HibernateUtils.getSessionFactory;
import static java.time.LocalDate.parse;

import java.util.Scanner;

import org.hibernate.SessionFactory;

import com.app.dao.VendorDaoImpl;
import com.app.entity.AccountType;
import com.app.entity.BankAccount;
import com.app.entity.Role;
import com.app.entity.Vendor;

public class TestVendor {

	public static void main(String[] args) {
		try (SessionFactory sf = getSessionFactory(); Scanner in = new Scanner(System.in);) {

			boolean exit = false;
			VendorDaoImpl vendorDao = new VendorDaoImpl();

			Vendor vendorEntity = null;

			while (!exit) {
				System.out.println("\nEnter 1 to Register a Vendor");
				System.out.println("Enter 2 to Unsubscribe the Vendor");
				System.out.println("Enter 3 to Fetch Vendor Details");
				System.out.println("Enter 4 to EXIT");

				try {
					switch (in.nextInt()) {
					case 1:
						System.out.println(
								"Enter Vendor Name, Email, Password, Registration Amount, Registration Date(yyyy-MM-dd), Role");
						vendorEntity = new Vendor(in.next(), in.next(), in.next(), in.nextDouble(), parse(in.next()),
								Role.valueOf(in.next().toUpperCase()));

						System.out.println("Enter Account Type and Bank Balance");
						for (int i = 0; i < 2; i++)
							vendorEntity.addBankAccountToList(
									new BankAccount(AccountType.valueOf(in.next().toUpperCase()), in.nextDouble()));

						System.out.println(vendorDao.registerVendor(vendorEntity));
						break;

					case 2:
						System.out.println("Enter Vendor ID");
						System.out.println(vendorDao.unsubscribeVendor(in.nextInt()));
						break;

					case 3:
						System.out.println("Enter Email and Password");
						vendorEntity = vendorDao.getVendorDetails(in.next(), in.next());
						System.out.println("\nVendor Details:\n" + vendorEntity);
						System.out.println("\nBank Account Details :");
						vendorEntity.getAccounts().forEach(account -> System.out.println(account));
						break;

					case 4:
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