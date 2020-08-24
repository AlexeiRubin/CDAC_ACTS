package com.app.enums;

public enum CarManufacturerEnum {
	AUDI, BMW, MERCEDES, ALFA_ROMEO, ASTON_MARTIN, PORSCHE, CORVETTE;

	@Override
	public String toString() {
		return name().toLowerCase();
	}
}