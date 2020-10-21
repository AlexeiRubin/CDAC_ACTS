package com.app.dao;

import java.io.IOException;
import java.time.LocalDate;

import com.app.exceptions.EmployeeException;

public interface EmployeeDao {

	void hireEmployeeDao(String employeeId, String employeeName, LocalDate employeeDOB, double employeeSalary,
			String departmentId) throws EmployeeException;

	void printEmployeeDetailsDao(String employeeId) throws EmployeeException;

	void printDeptEmployeeDetailsDao(String departmentId) throws EmployeeException;

	void writeEmployeeDetailsDao() throws IOException;
}