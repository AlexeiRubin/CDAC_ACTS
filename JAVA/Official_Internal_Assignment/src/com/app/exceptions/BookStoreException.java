package com.app.exceptions;

@SuppressWarnings("serial")
public class BookStoreException extends Exception {
	public BookStoreException(String exceptionMessage) {
		super(exceptionMessage);
	}
}