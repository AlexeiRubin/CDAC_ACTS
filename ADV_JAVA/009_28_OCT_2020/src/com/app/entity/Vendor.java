package com.app.entity;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "vendors")
public class Vendor {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer vendorId;

	@Column(length = 20)
	private String vendorName;

	@Column(length = 20, unique = true)
	private String vendorEmail;

	@Column(length = 20)
	private String vendorPassword;

	private double vendorRegistrationAmount;

	private LocalDate vendorRegistrationDate;

	@Enumerated(EnumType.STRING)
	@Column(length = 20)
	private Role vendorRole;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "accountHolder")
	private List<BankAccount> vendorAccounts = new ArrayList<>();

	public Vendor() {
		System.out.println("In Default Constructor of VENDOR Entity");
	}

	public Vendor(String vendorName, String vendorEmail, String vendorPassword, double vendorRegistrationAmount,
			LocalDate vendorRegistrationDate, Role vendorRole) {
		this.vendorName = vendorName;
		this.vendorEmail = vendorEmail;
		this.vendorPassword = vendorPassword;
		this.vendorRegistrationAmount = vendorRegistrationAmount;
		this.vendorRegistrationDate = vendorRegistrationDate;
		this.vendorRole = vendorRole;
	}

	public Integer getVendorId() {
		return vendorId;
	}

	public void setVendorId(Integer vendorId) {
		this.vendorId = vendorId;
	}

	public String getVendorName() {
		return vendorName;
	}

	public void setVendorName(String vendorName) {
		this.vendorName = vendorName;
	}

	public String getVendorEmail() {
		return vendorEmail;
	}

	public void setVendorEmail(String vendorEmail) {
		this.vendorEmail = vendorEmail;
	}

	public String getVendorPassword() {
		return vendorPassword;
	}

	public void setVendorPassword(String vendorPassword) {
		this.vendorPassword = vendorPassword;
	}

	public double getVendorRegistrationAmount() {
		return vendorRegistrationAmount;
	}

	public void setVendorRegistrationAmount(double vendorRegistrationAmount) {
		this.vendorRegistrationAmount = vendorRegistrationAmount;
	}

	public LocalDate getVendorRegistrationDate() {
		return vendorRegistrationDate;
	}

	public void setVendorRegistrationDate(LocalDate vendorRegistrationDate) {
		this.vendorRegistrationDate = vendorRegistrationDate;
	}

	public Role getVendorRole() {
		return vendorRole;
	}

	public void setVendorRole(Role vendorRole) {
		this.vendorRole = vendorRole;
	}

	public List<BankAccount> getAccounts() {
		return vendorAccounts;
	}

	public void setAccounts(List<BankAccount> vendorAccounts) {
		this.vendorAccounts = vendorAccounts;
	}

	public void addBankAccountToList(BankAccount bankAccount) {
		this.vendorAccounts.add(bankAccount);
		bankAccount.setAccountHolder(this);
	}

	public void removeBankAccountFromList(BankAccount bankAccount) {
		this.vendorAccounts.remove(bankAccount);
		bankAccount.setAccountHolder(null);
	}

	@Override
	public String toString() {
		return "ID : " + vendorId + ", NAME : " + vendorName + ", EMAIL : " + vendorEmail + ", PASSWORD : "
				+ vendorPassword + ", REG AMOUNT : " + vendorRegistrationAmount + ", REG DATE : "
				+ vendorRegistrationDate + ", ROLE : " + vendorRole;
	}
}