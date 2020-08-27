package com.app.utils;

import java.util.ArrayList;

import com.app.entity.CarAttribute;
import com.app.enums.CarManufacturerEnum;
import com.app.exception.CarAttributeExcpetion;

public class CarAttributeValidation {

	public static CarManufacturerEnum validateCompanyName(String companyName) throws CarAttributeExcpetion {
		for (CarManufacturerEnum companyNameValues : CarManufacturerEnum.values()) {
			if (companyNameValues.name().equalsIgnoreCase(companyName))
				return CarManufacturerEnum.valueOf(companyName);
		}
		throw new CarAttributeExcpetion("INVALID MANUFACTURER");
	}

	public static CarAttribute validateDuplicateEntry(CarAttribute entry, ArrayList<CarAttribute> carAttributeList)
			throws CarAttributeExcpetion {
		if (carAttributeList.contains(entry))
			throw new CarAttributeExcpetion("DUPLICATE ENTRY");
		return entry;
	}
}