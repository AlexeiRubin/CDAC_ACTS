package com.app.entity;

import java.time.LocalDate;

import com.app.enums.CustomerTypeEnum;

public class Customer {

	private String customerName, customerEmailId, customerPassword;
	private LocalDate customerDateOfBirth;
	private CustomerTypeEnum customerType;
	private double customerRegistrationAmount;
	private ShippingAddress customerShippingAddress;

	public Customer() {
		this.customerName = null;
		this.customerEmailId = null;
		this.customerPassword = null;
		this.customerType = null;
		this.customerDateOfBirth = null;
		this.customerRegistrationAmount = 0.0;
		this.customerShippingAddress = null;
	}

	public Customer(String customerEmailId) {
		this.customerEmailId = customerEmailId;
	}

	public Customer(String customerName, String customerEmailId, String customerPassword, CustomerTypeEnum customerType,
			LocalDate customerDateOfBirth, double customerRegistrationAmount) {
		this.customerName = customerName;
		this.customerEmailId = customerEmailId;
		this.customerPassword = customerPassword;
		this.customerType = customerType;
		this.customerDateOfBirth = customerDateOfBirth;
		this.customerRegistrationAmount = customerRegistrationAmount;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerEmailId() {
		return customerEmailId;
	}

	public void setCustomerEmailId(String customerEmailId) {
		this.customerEmailId = customerEmailId;
	}

	public String getCustomerPassword() {
		return customerPassword;
	}

	public void setCustomerPassword(String customerPassword) {
		this.customerPassword = customerPassword;
	}

	public CustomerTypeEnum getCustomerType() {
		return customerType;
	}

	public void setCustomerType(CustomerTypeEnum customerType) {
		this.customerType = customerType;
	}

	public LocalDate getCustomerDateOfBirth() {
		return customerDateOfBirth;
	}

	public void setCustomerDateOfBirth(LocalDate customerDateOfBirth) {
		this.customerDateOfBirth = customerDateOfBirth;
	}

	public double getCustomerRegistrationAmount() {
		return customerRegistrationAmount;
	}

	public void setCustomerRegistrationAmount(double customerRegistrationAmount) {
		this.customerRegistrationAmount = customerRegistrationAmount;
	}

	public ShippingAddress getCustomerShippingAddress() {
		return customerShippingAddress;
	}

	public void setCustomerShippingAddress(ShippingAddress customerShippingAddress) {
		this.customerShippingAddress = customerShippingAddress;
	}

	@Override
	public String toString() {
		return "NAME : " + customerName + ", EMAIL ID : " + customerEmailId + ", TYPE : " + customerType + ", DOB : "
				+ customerDateOfBirth + ", REGISTRATION AMOUNT : " + customerRegistrationAmount + ", "
				+ customerShippingAddress;
	}

	@Override
	public boolean equals(Object obj) {
		if (obj instanceof Customer)
			return this.customerEmailId.equals(((Customer) obj).customerEmailId);
		return false;
	}

	public class ShippingAddress {
		private String customerCity, customerState, customerCountry;
		private String[] customerContactNumber = new String[2];
		private int customerZipCode;

		public ShippingAddress() {
			this.customerCity = null;
			this.customerState = null;
			this.customerCountry = null;
			this.customerZipCode = 0;
			this.customerContactNumber[0] = null;
			this.customerContactNumber[1] = null;
		}

		public ShippingAddress(String customerCity, String customerState, String customerCountry, int customerZipCode,
				String customerLandLineNumber, String customerMobileNumber) {
			this.customerCity = customerCity;
			this.customerState = customerState;
			this.customerCountry = customerCountry;
			this.customerZipCode = customerZipCode;
			this.customerContactNumber[0] = customerLandLineNumber;
			this.customerContactNumber[1] = customerMobileNumber;
		}

		public String getCustomerCity() {
			return customerCity;
		}

		public void setCustomerCity(String customerCity) {
			this.customerCity = customerCity;
		}

		public String getCustomerState() {
			return customerState;
		}

		public void setCustomerState(String customerState) {
			this.customerState = customerState;
		}

		public String getCustomerCountry() {
			return customerCountry;
		}

		public void setCustomerCountry(String customerCountry) {
			this.customerCountry = customerCountry;
		}

		public String[] getCustomerContactNumber() {
			return customerContactNumber;
		}

		public void setCustomerContactNumber(String[] customerContactNumber) {
			this.customerContactNumber = customerContactNumber;
		}

		public int getCustomerZipCode() {
			return customerZipCode;
		}

		public void setCustomerZipCode(int customerZipCode) {
			this.customerZipCode = customerZipCode;
		}

		@Override
		public String toString() {
			return "CITY : " + customerCity + ", STATE : " + customerState + ", COUNTRY : " + customerCountry
					+ ", ZIPCODE : " + customerZipCode + ", LANDLINE NUMBER " + customerContactNumber[0]
					+ ", MOBILE NUMBER : " + customerContactNumber[1];
		}
	}
}