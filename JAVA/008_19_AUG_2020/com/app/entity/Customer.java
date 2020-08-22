package com.app.entity;

public class Customer {

	private String customerName, customerEmailId, customerPassword, customerType, customerDateOfBirth;
	private double customerRegistrationAmount;

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

	public String getCustomerType() {
		return customerType;
	}

	public void setCustomerType(String customerType) {
		this.customerType = customerType;
	}

	public String getCustomerDateOfBirth() {
		return customerDateOfBirth;
	}

	public void setCustomerDateOfBirth(String customerDateOfBirth) {
		this.customerDateOfBirth = customerDateOfBirth;
	}

	public double getCustomerRegistrationAmount() {
		return customerRegistrationAmount;
	}

	public void setCustomerRegistrationAmount(double customerRegistrationAmount) {
		this.customerRegistrationAmount = customerRegistrationAmount;
	}

	public Customer(String customerName, String customerEmailId, String customerPassword, String customerType,
			String customerDateOfBirth, double customerRegistrationAmount) {
		this.customerName = customerName;
		this.customerEmailId = customerEmailId;
		this.customerPassword = customerPassword;
		this.customerType = customerType;
		this.customerDateOfBirth = customerDateOfBirth;
		this.customerRegistrationAmount = customerRegistrationAmount;
	}

	@Override
	public String toString() {
		return "NAME : " + customerName + ", EMAIL ID : " + customerEmailId + ", TYPE : " + customerType + ", DOB : "
				+ customerDateOfBirth + ", REGISTRATION AMOUNT : " + customerRegistrationAmount;
	}

}