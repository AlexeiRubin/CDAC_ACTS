package com.app.dao.impl;

import static com.app.enums.UserTypeEnum.ADMIN;
import static com.app.enums.UserTypeEnum.CUSTOMER;
import static com.app.utils.CollectionUtils.populateSampleUserData;
import static com.app.utils.Validations.userLoginAuthenticationValidation;

import java.util.HashMap;

import com.app.dao.UserDao;
import com.app.entity.User;
import com.app.enums.UserTypeEnum;
import com.app.exceptions.UserException;

public class UserDaoImpl implements UserDao {

	public static HashMap<String, User> userLoginDetails;

	static {
		userLoginDetails = null;
	}

	public UserDaoImpl() {
		userLoginDetails = populateSampleUserData();
	}

	@Override
	public UserTypeEnum userLogin(String enteredEmailId, String enteredPassword) throws UserException {

		System.out.println("VALID LOGIN : "
				+ userLoginAuthenticationValidation(enteredEmailId, enteredPassword, userLoginDetails));
		if (enteredEmailId.equalsIgnoreCase("admin"))
			return ADMIN;
		else
			return CUSTOMER;
	}
}