package com.app.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "bank_account")
public class BankAccount {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer bankAccountId;

	@Enumerated(EnumType.STRING)
	@Column(length = 20)
	private AccountType bankAccountType;

	private double bankAccountBalance;

	@ManyToOne
	@JoinColumn(name = "vendorId", nullable = false)
	private Vendor accountHolder;

	public BankAccount() {
		System.out.println("In Default Constructor of BankAccount Entity");
	}

	public BankAccount(AccountType bankAccountType, double bankAccountBalance) {
		this.bankAccountType = bankAccountType;
		this.bankAccountBalance = bankAccountBalance;
	}

	public Integer getBankAccountId() {
		return bankAccountId;
	}

	public void setBankAccountId(Integer bankAccountId) {
		this.bankAccountId = bankAccountId;
	}

	public AccountType getBankAccountType() {
		return bankAccountType;
	}

	public void setBankAccountType(AccountType bankAccountType) {
		this.bankAccountType = bankAccountType;
	}

	public double getBankAccountBalance() {
		return bankAccountBalance;
	}

	public void setBankAccountBalance(double bankAccountBalance) {
		this.bankAccountBalance = bankAccountBalance;
	}

	public Vendor getAccountHolder() {
		return accountHolder;
	}

	public void setAccountHolder(Vendor accountHolder) {
		this.accountHolder = accountHolder;
	}

	@Override
	public String toString() {
		return "ACCOUNT ID : " + bankAccountId + ", ACCOUNT TYPE : " + bankAccountType + ", BALANCE : "
				+ bankAccountBalance;
	}
}