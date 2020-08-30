package com.app.utils;

import java.util.ArrayList;
import java.util.HashMap;

import com.app.entity.Book;
import com.app.entity.User;
import com.app.enums.BookCategoryEnum;
import com.app.exceptions.BookException;
import com.app.exceptions.UserException;

public class Validations {

	public static String emailIdValidation(String enteredEmailId) throws UserException {
		if (enteredEmailId.equalsIgnoreCase("admin"))
			return enteredEmailId;
		if (!(enteredEmailId.contains("@") && enteredEmailId.endsWith(".com")))
			throw new UserException("~~~~~~~INVALID EMAIL ID~~~~~~~");
		return enteredEmailId;
	}

	public static String passwordValidation(String enteredPassword) throws UserException {
		if (!(enteredPassword.length() >= 8))
			throw new UserException("~~~~~~~INVALID PASSWORD~~~~~~~");
		return enteredPassword;
	}

	public static BookCategoryEnum bookCategoryValidation(String bookCategory) throws UserException {
		for (BookCategoryEnum bookCategoryValues : BookCategoryEnum.values()) {
			if (bookCategoryValues.name().equalsIgnoreCase(bookCategory))
				return BookCategoryEnum.valueOf(bookCategory);
		}
		throw new UserException("~~~~~~~INVALID BOOK CATEGORY~~~~~~~");
	}

	public static String userLoginAuthenticationValidation(String enteredEmailId, String enteredPassword,
			HashMap<String, User> userLoginDetails) throws UserException {
		if (!userLoginDetails.containsKey(enteredEmailId))
			throw new UserException("~~~~~~~|| " + enteredEmailId + " ||~~~~~~~USER DOES NOT EXIST~~~~~~~");
		if (!enteredPassword.equals(userLoginDetails.get(enteredEmailId).getUserPassword()))
			throw new UserException("~~~~~~~INCORRECT PASSWORD~~~~~~~");
		return userLoginDetails.get(enteredEmailId).getUserName();
	}

	public static boolean bookExitsInCartValidation(ArrayList<Book> bookDetails, String bookTitle)
			throws BookException {
		if (!bookDetails.contains(new Book(bookTitle)))
			throw new BookException("~~~~~~~BOOK NOT AVAILABLE~~~~~~~");
		return true;
	}

	public static boolean bookStockAvailable(ArrayList<Book> bookDetails, String bookTitle) throws BookException {
		int index = bookDetails.indexOf(new Book(bookTitle));
		if (bookDetails.get(index).getBookQuantity() == 0)
			throw new BookException("~~~~~~~BOOK STOCK NOT AVAILABLE~~~~~~~");
		return true;
	}

	public static boolean cartContainsBook(HashMap<String, Integer> cart, String bookTitle) throws BookException {
		if (!cart.containsKey(bookTitle))
			throw new BookException("~~~~~~~BOOK NOT AVAILABLE IN CART~~~~~~~");
		return true;
	}
}