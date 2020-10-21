package com.app.utils;

import java.util.ArrayList;

import com.app.entity.core.Employee;
import com.app.exceptions.EmployeeException;

public class EmployeeValidations {

	public static void employeeIdValidation(Employee objRef, ArrayList<Employee> employeeDetails)
			throws EmployeeException {
		if (employeeDetails.contains(objRef))
			throw new EmployeeException("EMPLOYEE ID ALREADY EXISTS");
	}

	public static void employeeIdExistsValidation(Employee objRef, ArrayList<Employee> employeeDetails)
			throws EmployeeException {
		if (!employeeDetails.contains(objRef))
			throw new EmployeeException("EMPLOYEE ID DOES NOT EXISTS");
	}
}