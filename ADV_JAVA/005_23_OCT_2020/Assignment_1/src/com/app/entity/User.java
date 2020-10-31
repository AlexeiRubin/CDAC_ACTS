package com.app.entity;

public class User {

	private String username, password;

	public User() {
		this.username = null;
		this.password = null;
	}

	public User(String username, String password) {
		this.username = username;
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "USERNAME : " + username + ", PASSWORD : " + password;
	}
}