package com.app.tester;

import static com.app.enums.CarManufacturerEnum.valueOf;
import static com.app.utils.CarAttributeValidation.*;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Scanner;

import com.app.entity.CarAttribute;

public class TestCarAttribute {

	public static SimpleDateFormat dateFormat;

	static {
		dateFormat = new SimpleDateFormat("dd-MM-yyyy");
	}

	public static void main(String[] args) {

		try (Scanner in = new Scanner(System.in)) {

			ArrayList<CarAttribute> carAttributeList = new ArrayList<CarAttribute>();

			boolean exit = false;

			while (!exit) {
				System.out.println("\nEnter 1 to Register a New Car");
				System.out.println("\nEnter 2 to Display All Car Details");
				System.out.println("\nEnter 3 for Location Specific Details");
				System.out.println("\nEnter 4 to Offer a Discount");
				System.out.println("\nEnter 5 to EXIT");

				try {
					switch (in.nextInt()) {

					case 1:
						System.out.println(
								"\nEnter the Registration Number, Price, Color, Manufacturing Date, Company Name, Location");
						CarAttribute objRef = new CarAttribute(in.next(), in.nextDouble(), in.next(),
								dateFormat.parse(in.next()));

						objRef.setCarManufacturer(
								objRef.new Manufacturer(validateCompanyName(in.next().toUpperCase()), in.next()));

						validateDuplicateEntry(objRef, carAttributeList);
						carAttributeList.add(objRef);
						break;

					case 2:
						for (CarAttribute entity : carAttributeList)
							System.out.println(entity);
						break;

					case 3:
						System.out.println("Enter the Location");
						String loc = in.next();

						for (CarAttribute entity : carAttributeList) {
							if (entity.getCarManufacturer().getManufacturingLocation().equals(loc))
								System.out.println("REGISTRATION NUMBER : " + entity.getCarRegistrationNumber()
										+ ", PRICE : " + entity.getCarPrice());
						}
						break;

					case 4:
						System.out.println("Enter the Company Name");
						String companyName = in.next().toUpperCase();
						in.nextLine();

						System.out.println("Enter the Discount Value");
						double discount = in.nextDouble();

						for (CarAttribute entity : carAttributeList) {
							if (entity.getCarManufacturer().getManufacturerCompanyName().equals(valueOf(companyName)))
								entity.setCarPrice((entity.getCarPrice() * (100 - discount) / 100));
						}
						break;

					case 5:
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