package com.app.service.impl;

import static com.app.utils.Validations.emailIdValidation;
import static com.app.utils.Validations.passwordValidation;

import com.app.dao.impl.UserDaoImpl;
import com.app.enums.UserTypeEnum;
import com.app.exceptions.UserException;
import com.app.service.UserService;

public class UserServiceImpl implements UserService {

	public UserDaoImpl userDaoImpl;

	public UserServiceImpl() {
		userDaoImpl = new UserDaoImpl();
	}

	@Override
	public UserTypeEnum userLoginService(String enteredEmailId, String enteredPassword) throws UserException {
		return userDaoImpl.userLogin(emailIdValidation(enteredEmailId), passwordValidation(enteredPassword));
	}
}