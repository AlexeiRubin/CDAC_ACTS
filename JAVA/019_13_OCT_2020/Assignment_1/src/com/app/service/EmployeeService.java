package com.app.service;

import java.io.IOException;
import java.time.LocalDate;

import com.app.dao.impl.EmployeeDaoImpl;
import com.app.exceptions.EmployeeException;

public class EmployeeService {

	public EmployeeDaoImpl employeeDaoImpl;

	public EmployeeService() throws EmployeeException, ClassNotFoundException, IOException {
		employeeDaoImpl = new EmployeeDaoImpl();
	}

	public void hireEmployeeService(String employeeId, String employeeName, String employeeDOB, double employeeSalary,
			String departmentId) throws EmployeeException {
		employeeDaoImpl.hireEmployeeDao(employeeId, employeeName, LocalDate.parse(employeeDOB), employeeSalary,
				departmentId);
	}

	public void printEmployeeDetailsService(String employeeId) throws EmployeeException {
		employeeDaoImpl.printEmployeeDetailsDao(employeeId);
	}

	public void printDeptEmployeeDetailsService(String departmentId) throws EmployeeException {
		employeeDaoImpl.printDeptEmployeeDetailsDao(departmentId);
	}

	public void writeEmployeeDetailsService() throws IOException {
		employeeDaoImpl.writeEmployeeDetailsDao();
	}

}