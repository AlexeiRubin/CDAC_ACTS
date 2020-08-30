package com.app.entity;

import com.app.enums.UserTypeEnum;

public class User {

	private String userName, userPassword;
	private UserTypeEnum userType;

	public User() {
		this.userName = null;
		this.userPassword = null;
		this.userType = null;
	}

	public User(String userName, String userPassword, UserTypeEnum userType) {
		this.userName = userName;
		this.userPassword = userPassword;
		this.userType = userType;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public UserTypeEnum getUserType() {
		return userType;
	}

	public void setUserType(UserTypeEnum userType) {
		this.userType = userType;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!(obj instanceof User))
			return false;
		User other = (User) obj;
		if (userPassword == null) {
			if (other.userPassword != null)
				return false;
		} else if (!userPassword.equals(other.userPassword))
			return false;
		return true;
	}
}