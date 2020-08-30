package com.app.utils;

import java.util.HashMap;

import com.app.entity.User;
import com.app.enums.BookCategoryEnum;
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
}