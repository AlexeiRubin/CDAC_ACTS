package com.app.exceptions;

@SuppressWarnings("serial")
public class EmployeeException extends Exception {
	public EmployeeException(String exceptionMessage) {
		super(exceptionMessage);
	}
}