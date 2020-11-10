package com.app.tester;

import static com.app.utils.HibernateUtils.getSessionFactory;
import static java.time.LocalDate.parse;

import java.util.Scanner;

import org.hibernate.SessionFactory;

import com.app.dao.VendorDaoImpl;
import com.app.entity.AccountType;
import com.app.entity.BankAccount;
import com.app.entity.Location;
import com.app.entity.PaymentMode;
import com.app.entity.PaymentType;
import com.app.entity.Role;
import com.app.entity.Vendor;

public class TestVendor {

	public static void main(String[] args) {
		try (SessionFactory sf = getSessionFactory(); Scanner in = new Scanner(System.in);) {
			boolean exit = false;

			VendorDaoImpl vendorDao = new VendorDaoImpl();
			Vendor vendorEntity = null;

			while (!exit) {
				System.out.println("\nEnter 1 to Register Vendor");
				System.out.println("Enter 2 to View Vendor Details");
				System.out.println("Enter 3 to EXIT");

				try {
					switch (in.nextInt()) {
					case 1:
						System.out.println(
								"Enter Vendor Name, Email, Password, Registration Amount, Registration Date(yyyy-MM-dd),Role");
						vendorEntity = new Vendor(in.next(), in.next(), in.next(), in.nextDouble(), parse(in.next()),
								Role.valueOf(in.next().toUpperCase()));

						System.out.println("Enter Two Bank Details: Account Type and Balance");
						for (int i = 0; i < 2; i++)
							vendorEntity.addBankAccountToList(
									new BankAccount(AccountType.valueOf(in.next().toUpperCase()), in.nextDouble()));

						System.out.println("Enter Location Details: City,State and Country");
						vendorEntity.addVendorLocation(new Location(in.next(), in.next(), in.next()));

						System.out.println("Enter Payment Type, Amount and Date(yyyy-MM-dd)");
						vendorEntity.setPaymentMode(new PaymentMode(PaymentType.valueOf(in.next().toUpperCase()),
								in.nextDouble(), parse(in.next())));

						System.out.println("Enter Two Phone Numbers");
						for (int i = 0; i < 2; i++)
							vendorEntity.getVendorPhoneNumbers().add(in.next());

						System.out.println(vendorDao.registerVendor(vendorEntity));
						break;

					case 2:
						System.out.println("Enter Email");
						vendorEntity = vendorDao.getVendorDetails(in.next());
						System.out.println("\nVendor Details:\n" + vendorEntity);

						System.out.println("\nBank Account Details :");
						vendorEntity.getAccounts().forEach(account -> System.out.println(account));

						System.out.println("\nLocation: \n" + vendorEntity.getVendorLocation());
						System.out.println("\nPayment Method: \n" + vendorEntity.getPaymentMode());

						System.out.println("\nPhone Numbers :");
						vendorEntity.getVendorPhoneNumbers().forEach(phoneNo -> System.out.println(phoneNo));

						break;

					case 3:
						exit = true;
						break;
					}

				} catch (Exception e) {
					System.out.println(e);
				}
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
}