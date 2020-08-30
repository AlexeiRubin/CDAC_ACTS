package com.app.service;

import com.app.enums.UserTypeEnum;
import com.app.exceptions.UserException;

public interface UserService {

	UserTypeEnum userLoginService(String enteredEmailId, String enteredPassword) throws UserException;
}