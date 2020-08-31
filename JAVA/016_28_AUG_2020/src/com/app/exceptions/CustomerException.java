package com.app.exceptions;

@SuppressWarnings("serial")
public class CustomerException extends Exception {
	public CustomerException(String exceptionMessage) {
		super(exceptionMessage);
	}
}