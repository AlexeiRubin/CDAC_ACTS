package com.app.enums;

public enum UserTypeEnum {
	ADMIN, CUSTOMER;

	@Override
	public String toString() {
		return name().toLowerCase();
	}
}