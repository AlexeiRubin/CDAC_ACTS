package com.app.dao;

import com.app.entity.Vendor;

public interface VendorDao {

	String registerVendor(Vendor vendorEntity);

	Vendor getVendorDetails(String vendorEmail);
}