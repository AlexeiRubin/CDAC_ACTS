package com.app.entity;

import java.sql.Date;

public class Customer {

	private int customerId;
	private double customerDepositAmount;
	private String customerEmail, customerName, customerPassword;
	private Date customerRegistrationDate;
	private String customerRole;

	public Customer() {
		this.customerId = 0;
		this.customerDepositAmount = 0.0;
		this.customerEmail = null;
		this.customerName = null;
		this.customerPassword = null;
		this.customerRegistrationDate = null;
		this.customerRole = null;
	}

	public Customer(int customerId, double customerDepositAmount, String customerEmail, String customerName,
			String customerPassword, Date customerRegistrationDate, String customerRole) {
		this.customerId = customerId;
		this.customerDepositAmount = customerDepositAmount;
		this.customerEmail = customerEmail;
		this.customerName = customerName;
		this.customerPassword = customerPassword;
		this.customerRegistrationDate = customerRegistrationDate;
		this.customerRole = customerRole;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public double getCustomerDepositAmount() {
		return customerDepositAmount;
	}

	public void setCustomerDepositAmount(double customerDepositAmount) {
		this.customerDepositAmount = customerDepositAmount;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerPassword() {
		return customerPassword;
	}

	public void setCustomerPassword(String customerPassword) {
		this.customerPassword = customerPassword;
	}

	public Date getCustomerRegistrationDate() {
		return customerRegistrationDate;
	}

	public void setCustomerRegistrationDate(Date customerRegistrationDate) {
		this.customerRegistrationDate = customerRegistrationDate;
	}

	public String getCustomerRole() {
		return customerRole;
	}

	public void setCustomerRole(String customerRole) {
		this.customerRole = customerRole;
	}

	@Override
	public String toString() {
		return "ID : " + customerId + ", DEPOSIT AMOUNT : " + customerDepositAmount + ", EMAIL : " + customerEmail
				+ ", NAME : " + customerName + ", PASSWORD : " + customerPassword + ", REGISTRAION DATE : "
				+ customerRegistrationDate + ", ROLE : " + customerRole;
	}

}