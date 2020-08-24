package com.app.utils;

import java.util.ArrayList;

import com.app.entity.CarAttribute;
import com.app.enums.CarManufacturerEnum;
import com.app.exception.CarAttributeExcpetion;

public class CarAttributeValidation {

	public static CarManufacturerEnum validateCompanyName(String companyName) throws CarAttributeExcpetion {
		for (CarManufacturerEnum customerTypeValues : CarManufacturerEnum.values()) {
			if (customerTypeValues.equals(companyName))
				return CarManufacturerEnum.valueOf(companyName);
		}
		throw new CarAttributeExcpetion("INVALID MANUFACTURER");
	}

	public static void validateDuplicateEntry(CarAttribute entry, ArrayList<CarAttribute> carAttributeList)
			throws CarAttributeExcpetion {
		for (CarAttribute entity : carAttributeList) {
			if (entity != null) {
				if (entity.getCarRegistrationNumber().equals(entry.getCarRegistrationNumber())
						|| entity.getCarManufactureDate().equals(entry.getCarManufactureDate())
						|| entity.getCarManufacturer().equals(entry.getCarManufacturer())) {
					throw new CarAttributeExcpetion("DUPLICATE ENTRY");
				}
			}
		}
	}
}