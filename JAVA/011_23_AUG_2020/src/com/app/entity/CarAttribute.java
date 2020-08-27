package com.app.entity;

import java.util.Date;

import com.app.enums.CarManufacturerEnum;

public class CarAttribute {

	private String carRegistrationNumber, carColor;
	private double carPrice;
	private Date carManufactureDate;
	private Manufacturer carManufacturer;

	public CarAttribute() {
		this.carRegistrationNumber = null;
		this.carColor = null;
		this.carPrice = 0.0;
		this.carManufactureDate = null;
		this.carManufacturer = null;
	}

	public CarAttribute(String carRegistrationNumber, Date carManufactureDate,
			CarManufacturerEnum manufacturerCompanyName) {
		this.carRegistrationNumber = carRegistrationNumber;
		this.carManufactureDate = carManufactureDate;
		this.carManufacturer.manufacturerCompanyName = manufacturerCompanyName;
	}

	public CarAttribute(String carRegistrationNumber, double carPrice, String carColor, Date carManufactureDate) {
		this.carRegistrationNumber = carRegistrationNumber;
		this.carColor = carColor;
		this.carPrice = carPrice;
		this.carManufactureDate = carManufactureDate;
	}

	public String getCarRegistrationNumber() {
		return carRegistrationNumber;
	}

	public void setCarRegistrationNumber(String carRegistrationNumber) {
		this.carRegistrationNumber = carRegistrationNumber;
	}

	public String getCarColor() {
		return carColor;
	}

	public void setCarColor(String carColor) {
		this.carColor = carColor;
	}

	public double getCarPrice() {
		return carPrice;
	}

	public void setCarPrice(double carPrice) {
		this.carPrice = carPrice;
	}

	public Date getCarManufactureDate() {
		return carManufactureDate;
	}

	public void setCarManufactureDate(Date carManufactureDate) {
		this.carManufactureDate = carManufactureDate;
	}

	public Manufacturer getCarManufacturer() {
		return carManufacturer;
	}

	public void setCarManufacturer(Manufacturer carManufacturer) {
		this.carManufacturer = carManufacturer;
	}

	@Override
	public String toString() {
		return "REGISTRATION NUMBER : " + carRegistrationNumber + ", COLOR : " + carColor + ", PRICE : " + carPrice
				+ ", MANUFACTURED DATE : " + carManufactureDate + ", " + carManufacturer;
	}

	@Override
	public boolean equals(Object obj) {
		if (obj instanceof CarAttribute)
			return this.carRegistrationNumber.equals(((CarAttribute) obj).carRegistrationNumber)
					&& this.carManufactureDate.equals(((CarAttribute) obj).carManufactureDate)
					&& this.carManufacturer.manufacturerCompanyName
							.equals(((CarAttribute) obj).carManufacturer.manufacturerCompanyName);
		return false;
	}

	public class Manufacturer {
		private CarManufacturerEnum manufacturerCompanyName;
		private String manufacturingLocation;

		public Manufacturer() {
			this.manufacturerCompanyName = null;
			this.manufacturingLocation = null;
		}

		public Manufacturer(CarManufacturerEnum manufacturerCompanyName, String manufacturingLocation) {
			this.manufacturerCompanyName = manufacturerCompanyName;
			this.manufacturingLocation = manufacturingLocation;
		}

		public CarManufacturerEnum getManufacturerCompanyName() {
			return manufacturerCompanyName;
		}

		public void setManufacturerCompanyName(CarManufacturerEnum manufacturerCompanyName) {
			this.manufacturerCompanyName = manufacturerCompanyName;
		}

		public String getManufacturingLocation() {
			return manufacturingLocation;
		}

		public void setManufacturingLocation(String manufacturingLocation) {
			this.manufacturingLocation = manufacturingLocation;
		}

		@Override
		public String toString() {
			return "COMPANY NAME : " + manufacturerCompanyName + ", LOCATION : " + manufacturingLocation;
		}
	}
}