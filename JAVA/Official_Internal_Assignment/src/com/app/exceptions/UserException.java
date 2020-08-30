package com.app.exceptions;

@SuppressWarnings("serial")
public class UserException extends Exception {
	public UserException(String exceptionMessage) {
		super(exceptionMessage);
	}
}