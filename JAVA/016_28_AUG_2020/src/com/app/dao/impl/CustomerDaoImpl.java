package com.app.dao.impl;

import static com.app.utils.CollectionUtils.populateSampleCustomerData;
import static com.app.utils.CollectionUtils.populateSampleCustomerDataForMap;
import static com.app.utils.CustomerValidations.customerLoginAuthenticationValidation;
import static com.app.utils.IOUtils.writeGoldTypeSeniorCitizenDetails;
import static com.app.utils.IOUtils.writeSortedCustomerDetailsByRegistrationAmount;
import static java.time.LocalDate.now;

import java.io.FileNotFoundException;
import java.time.Period;
import java.util.HashMap;

import com.app.dao.CustomerDao;
import com.app.entity.core.Customer;
import com.app.exceptions.CustomerException;

public class CustomerDaoImpl implements CustomerDao {

	public static HashMap<String, Customer> customerDetails;

	static {
		customerDetails = null;
	}

	public CustomerDaoImpl() throws CustomerException {
		customerDetails = populateSampleCustomerDataForMap(populateSampleCustomerData());
	}

	@Override
	public void customerLoginAuthentication(String enteredCustomerEmailId, String enteredCustomerPassword)
			throws CustomerException {
		customerLoginAuthenticationValidation(enteredCustomerEmailId, enteredCustomerPassword, customerDetails);
		System.out.println("VALID LOGIN : " + enteredCustomerEmailId);
	}

	@Override
	public void customerSubscriptionPayment(String enteredCustomerEmailId) {
		customerDetails.get(enteredCustomerEmailId).setCustomerSubscriptionPaidDate(now());
	}

	@Override
	public void customerLatePaymentPenalty() {
		for (Customer entity : customerDetails.values()) {
			if (Period.between(entity.getCustomerSubscriptionPaidDate(), now()).getMonths() != 0)
				entity.setCustomerRegistrationAmount(
						entity.getCustomerRegistrationAmount() + (entity.getCustomerRegistrationAmount() * 0.02));
		}
	}

	@Override
	public void goldTypeSeniorCitizens() throws FileNotFoundException {
		writeGoldTypeSeniorCitizenDetails(customerDetails);
	}

	@Override
	public void customerDetailsSortedByRegAmt() throws FileNotFoundException {
		writeSortedCustomerDetailsByRegistrationAmount(customerDetails);
	}
}