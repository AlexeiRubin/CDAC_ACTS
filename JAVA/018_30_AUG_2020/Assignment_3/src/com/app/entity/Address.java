package com.app.entity;

public class Address {

	private String cityName, stateName, phoneNo;

	public Address(String cityName, String stateName, String phoneNo) {
		this.cityName = cityName;
		this.stateName = stateName;
		this.phoneNo = phoneNo;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getStateName() {
		return stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	@Override
	public String toString() {
		return "CITY : " + cityName + ", STATE : " + stateName + ", PHONE NUMBER : " + phoneNo;
	}
}