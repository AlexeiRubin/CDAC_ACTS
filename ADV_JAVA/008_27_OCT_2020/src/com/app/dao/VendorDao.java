package com.app.dao;

import java.time.LocalDate;
import java.util.List;

import com.app.entity.Vendor;

public interface VendorDao {

	String registerVendor(Vendor vendor);

	Vendor authenticateVendor(String vendorEmail, String vendorPassword);

	List<Vendor> getSpecificVendors(LocalDate vendorRegistrationDate, double vendorRegistrationAmount);

	String discountBeforeRegDate(LocalDate vendorRegistrationDate, double vendorDiscountAmount);
}