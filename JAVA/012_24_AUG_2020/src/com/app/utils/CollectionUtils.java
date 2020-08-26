package com.app.utils;

import static com.app.utils.CustomerValidations.*;

import java.util.ArrayList;

import com.app.entity.Customer;
import com.app.exceptions.CustomerException;

public class CollectionUtils {
	public static ArrayList<Customer> populateSampleCustomerData() throws CustomerException {
		ArrayList<Customer> customerSampleData = new ArrayList<>();

		customerSampleData.add(new Customer("A", customerEmailIdValidation("a@a.com"),
				customerPasswordValidation("1111111111"), customerTypeValidation("PLATINUM"),
				customerDateOfBirthValidation("1990-05-10"), customerRegistrationAmountValidation(2500.00)));

		customerSampleData.get(0).setCustomerShippingAddress(customerSampleData.get(0).new ShippingAddress(
				"Sevastopool", "CrimeanPeninsula", "Russia", 111, "1", "1"));

		customerSampleData.add(new Customer("B", customerEmailIdValidation("b@b.com"),
				customerPasswordValidation("2222222222"), customerTypeValidation("SILVER"),
				customerDateOfBirthValidation("1991-04-09"), customerRegistrationAmountValidation(3000.00)));

		customerSampleData.get(1).setCustomerShippingAddress(
				customerSampleData.get(1).new ShippingAddress("BakuCity", "Baku", "Azerbaijan", 222, "2", "2"));

		customerSampleData.add(new Customer("C", customerEmailIdValidation("c@c.com"),
				customerPasswordValidation("3333333333"), customerTypeValidation("PLATINUM"),
				customerDateOfBirthValidation("1992-03-08"), customerRegistrationAmountValidation(3500.00)));

		customerSampleData.get(2).setCustomerShippingAddress(
				customerSampleData.get(2).new ShippingAddress("Karlovy", "Vary", "Czechia", 333, "3", "3"));

		customerSampleData.add(new Customer("D", customerEmailIdValidation("d@d.com"),
				customerPasswordValidation("4444444444"), customerTypeValidation("GOLD"),
				customerDateOfBirthValidation("1993-02-07"), customerRegistrationAmountValidation(6000.00)));

		customerSampleData.get(3).setCustomerShippingAddress(
				customerSampleData.get(3).new ShippingAddress("Bruges", "Brussels", "Belgium", 444, "4", "4"));

		customerSampleData.add(new Customer("E", customerEmailIdValidation("e@e.com"),
				customerPasswordValidation("5555555555"), customerTypeValidation("GOLD"),
				customerDateOfBirthValidation("1994-01-06"), customerRegistrationAmountValidation(5500.00)));

		customerSampleData.get(4).setCustomerShippingAddress(
				customerSampleData.get(4).new ShippingAddress("Arnhem", "Gelderland", "Netherlands", 555, "5", "5"));

		customerSampleData.add(new Customer("F", customerEmailIdValidation("f@f.com"),
				customerPasswordValidation("6666666666"), customerTypeValidation("PLATINUM"),
				customerDateOfBirthValidation("1995-12-15"), customerRegistrationAmountValidation(7500.00)));

		customerSampleData.get(5).setCustomerShippingAddress(
				customerSampleData.get(5).new ShippingAddress("Sapporo", "Hokkaido", "Japan", 666, "6", "6"));

		customerSampleData.add(new Customer("G", customerEmailIdValidation("g@g.com"),
				customerPasswordValidation("7777777777"), customerTypeValidation("SILVER"),
				customerDateOfBirthValidation("1996-11-14"), customerRegistrationAmountValidation(4500.00)));

		customerSampleData.get(6).setCustomerShippingAddress(customerSampleData.get(6).new ShippingAddress("Rotterdam",
				"SouthHolland", "Netherlands", 777, "7", "7"));

		customerSampleData.add(new Customer("H", customerEmailIdValidation("h@h.com"),
				customerPasswordValidation("8888888888"), customerTypeValidation("GOLD"),
				customerDateOfBirthValidation("1960-10-13"), customerRegistrationAmountValidation(10000.00)));

		customerSampleData.get(7).setCustomerShippingAddress(
				customerSampleData.get(7).new ShippingAddress("Strasbourg", "Alsace", "France", 888, "8", "8"));

		customerSampleData.add(new Customer("I", customerEmailIdValidation("i@i.com"),
				customerPasswordValidation("9999999999"), customerTypeValidation("SILVER"),
				customerDateOfBirthValidation("1965-03-15"), customerRegistrationAmountValidation(1000.00)));

		customerSampleData.get(8).setCustomerShippingAddress(
				customerSampleData.get(8).new ShippingAddress("QuebecCity", "QuebecProvince", "Canada", 999, "9", "9"));

		customerSampleData.add(new Customer("J", customerEmailIdValidation("j@j.com"),
				customerPasswordValidation("1010101010"), customerTypeValidation("PLATINUM"),
				customerDateOfBirthValidation("1962-05-20"), customerRegistrationAmountValidation(100000.00)));

		customerSampleData.get(9).setCustomerShippingAddress(
				customerSampleData.get(9).new ShippingAddress("SaltLakeCity", "Utah", "USA", 1010, "10", "10"));

		return customerSampleData;
	}
}