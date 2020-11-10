package com.app.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "location")
public class Location {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer locationId;

	@Column(length = 20)
	private String city;

	@Column(length = 20)
	private String state;

	@Column(length = 20)
	private String country;

	@OneToOne
	private Vendor vendorEntity;

	public Location() {
		System.out.println("In Default Constructor of Location Entity");
	}

	public Location(String city, String state, String country) {
		this.city = city;
		this.state = state;
		this.country = country;
	}

	public Integer getLocationId() {
		return locationId;
	}

	public void setLocationId(Integer locationId) {
		this.locationId = locationId;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public Vendor getVendorEntity() {
		return vendorEntity;
	}

	public void setVendorEntity(Vendor vendorEntity) {
		this.vendorEntity = vendorEntity;
	}

	@Override
	public String toString() {
		return "LOCATION ID : " + locationId + ", CITY : " + city + ", STATE : " + state + ", COUNTRY : " + country;
	}

}