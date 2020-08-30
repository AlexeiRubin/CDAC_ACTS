package com.app.exceptions;

@SuppressWarnings("serial")
public class BookException extends Exception {
	public BookException(String exceptionMessage) {
		super(exceptionMessage);
	}
}