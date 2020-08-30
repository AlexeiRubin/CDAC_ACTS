package com.app.dao;

import com.app.enums.UserTypeEnum;
import com.app.exceptions.UserException;

public interface UserDao {

	UserTypeEnum userLogin(String enteredEmailId, String enteredPassword) throws UserException;
}