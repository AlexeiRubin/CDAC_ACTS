package com.app.enums;

public enum CarManufacturerEnum {
	ACURA, ALFA_ROMEO, ASTONMARTIN, AUDI, BMW, BENTLEY, BUICK, CADILLAC, CHEVROLET, CHRYSLER, CORVETTE, DODGE, FIAT,
	FORD, GMC, GENESIS, HONDA, HYUNDAI, INFINITI, JAGUAR, JEEP, KIA, LANDROVER, LEXUS, LINCOLN, LOTUS, MAHINDRA, MARUTI,
	MASERATI, MAZDA, MERCEDES, MINI, MITSUBISHI, NISSAN, PONTIAC, PORSCHE, ROLLSROYCE, SAAB, SUBARU, SUZUKI, TATA,
	TESLA, TOYOTA, VOLKSWAGEN, VOLVO;

	@Override
	public String toString() {
		return name().toLowerCase();
	}
}