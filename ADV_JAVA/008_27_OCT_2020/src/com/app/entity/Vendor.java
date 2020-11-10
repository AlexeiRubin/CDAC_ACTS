package com.app.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "vendors")
public class Vendor {

	private Integer vendorId;
	private String vendorName, vendorEmail, vendorPassword;
	private double vendorRegistrationAmount;
	private LocalDate vendorRegistrationDate;
	private Role vendorRole;

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

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getVendorId() {
		return vendorId;
	}

	public void setVendorId(Integer vendorId) {
		this.vendorId = vendorId;
	}

	@Column(length = 20)
	public String getVendorName() {
		return vendorName;
	}

	public void setVendorName(String vendorName) {
		this.vendorName = vendorName;
	}

	@Column(length = 20, unique = true)
	public String getVendorEmail() {
		return vendorEmail;
	}

	public void setVendorEmail(String vendorEmail) {
		this.vendorEmail = vendorEmail;
	}

	@Column(length = 20)
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

	@Enumerated(EnumType.STRING)
	@Column(length = 20)
	public Role getVendorRole() {
		return vendorRole;
	}

	public void setVendorRole(Role vendorRole) {
		this.vendorRole = vendorRole;
	}

	@Override
	public String toString() {
		return "ID : " + vendorId + ", NAME : " + vendorName + ", EMAIL : " + vendorEmail + ", PASSWORD : "
				+ vendorPassword + ", REG AMOUNT : " + vendorRegistrationAmount + ", REG DATE : "
				+ vendorRegistrationDate + ", ROLE : " + vendorRole;
	}
}