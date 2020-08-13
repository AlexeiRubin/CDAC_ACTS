package com.app.customer;

import java.util.*;

class Customer {
    
    private String customerName, customerEmailId;
    private int customerAge;
    private double customerCreditLimit;
             
    //parameterized constructor
    Customer(String customerName, String customerEmailId, int customerAge, double customerCreditLimit) {
        this.customerName = customerName;
        this.customerEmailId = customerEmailId;
        this.customerAge = customerAge;
        this.customerCreditLimit = customerCreditLimit;
    }
			 
    //default constructor
    Customer() {
        this("Lol Rofl", "lol.rofl@lmao.com", 40, 10000.00);
    }
             
    //init default value to one data member
    Customer(String customerName, String customerEmailId, int customerAge) {
        this(customerName, customerEmailId, customerAge, 15000.00);
    }
             
    public String getCustomerName() { return customerName; }
             
    public String getCustomerEmailId() { return customerEmailId; }
             
    public int getCustomerAge() { return customerAge; }
             
    public double getCustomerCreditLimit() { return customerCreditLimit; }
             
    public void setCustomerName(String customerName) {
	this.customerName = customerName;
    }
             
    public void setCustomerEmailId(String customerEmailId) {
	this.customerEmailId = customerEmailId;
    }
             
    public void setCustomerAge(int customerAge) {
	this.customerAge = customerAge;
    }
             
    public void setCustomerCreditLimit(double customerCreditLimit) {
	this.customerCreditLimit = customerCreditLimit;
    }
             
    //print customerName & customerCreditLimit only
    public String getDetails() {
        return "NAME : " + customerName + ", CREDIT LIMIT : " + customerCreditLimit;
    }
             
    //overloading toString method
    public String toString() {
	return "NAME : " + customerName + ", EMAIL ID : " + customerEmailId + ", AGE : " + customerAge + ", CREDIT LIMIT : " + customerCreditLimit;
     }
}
