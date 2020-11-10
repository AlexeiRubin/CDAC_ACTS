package com.app.dao;

import com.app.entity.Vendor;

public interface VendorDao {

	String registerVendor(Vendor vendorEntity);

	String unsubscribeVendor(int vendorId);

	Vendor getVendorDetails(String vendorEmail, String vendorPassword);
}