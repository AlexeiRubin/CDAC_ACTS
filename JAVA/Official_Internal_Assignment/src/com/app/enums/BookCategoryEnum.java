package com.app.enums;

public enum BookCategoryEnum {
	FICTION, FINANACE, MEDITATION, SCIENCE, YOGA;

	@Override
	public String toString() {
		return name().toLowerCase();
	}
}