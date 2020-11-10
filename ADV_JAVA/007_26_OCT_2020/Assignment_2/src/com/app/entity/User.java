package com.app.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

@Entity
@Table(name = "users")
public class User {

	private Integer userId;
	private String userName, userEmail, userPassword, userConfirmPassword;
	private Role userRole;
	private double userRegistrationAmount;
	private Date userRegistrationDate;
	private Byte[] userImage;

	public User() {
		System.out.println("In Default Constructor of USER Entity");
	}

	public User(String userName, String userEmail, String userPassword, String userConfirmPassword, Role userRole,
			double userRegistrationAmount, Date userRegistrationDate) {
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPassword = userPassword;
		this.userConfirmPassword = userConfirmPassword;
		this.userRole = userRole;
		this.userRegistrationAmount = userRegistrationAmount;
		this.userRegistrationDate = userRegistrationDate;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	@Column(length = 20)
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(length = 20, unique = true)
	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	@Column(length = 20)
	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	@Transient
	public String getUserConfirmPassword() {
		return userConfirmPassword;
	}

	public void setUserConfirmPassword(String userConfirmPassword) {
		this.userConfirmPassword = userConfirmPassword;
	}

	@Enumerated(EnumType.STRING)
	@Column(length = 20)
	public Role getUserRole() {
		return userRole;
	}

	public void setUserRole(Role userRole) {
		this.userRole = userRole;
	}

	public double getUserRegistrationAmount() {
		return userRegistrationAmount;
	}

	public void setUserRegistrationAmount(double userRegistrationAmount) {
		this.userRegistrationAmount = userRegistrationAmount;
	}

	@Temporal(TemporalType.DATE)
	public Date getUserRegistrationDate() {
		return userRegistrationDate;
	}

	public void setUserRegistrationDate(Date userRegistrationDate) {
		this.userRegistrationDate = userRegistrationDate;
	}

	@Lob
	public Byte[] getUserImage() {
		return userImage;
	}

	public void setUserImage(Byte[] userImage) {
		this.userImage = userImage;
	}

	@Override
	public String toString() {
		return "ID : " + userId + ", NAME : " + userName + ", EMAIL : " + userEmail + ", PASSWORD : " + userPassword
				+ ", uCONFIRM PASSWORD : " + userConfirmPassword + ", ROLE : " + userRole + ", REG AMOUNT : "
				+ userRegistrationAmount + ", REG DATE : " + userRegistrationDate;
	}
}