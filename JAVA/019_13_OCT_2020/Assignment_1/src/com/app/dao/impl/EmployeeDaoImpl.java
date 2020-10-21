package com.app.dao.impl;

import static com.app.utils.CollectionUtils.populateSampleEmployeeData;
import static com.app.utils.EmployeeValidations.employeeIdExistsValidation;
import static com.app.utils.EmployeeValidations.employeeIdValidation;
import static com.app.utils.IOUtils.readEmployeeDetails;
import static com.app.utils.IOUtils.writeEmployeeDetails;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collections;

import com.app.dao.EmployeeDao;
import com.app.entity.comparators.EmployeeDOBComparator;
import com.app.entity.core.Employee;
import com.app.exceptions.EmployeeException;

public class EmployeeDaoImpl implements EmployeeDao {

	public static ArrayList<Employee> employeeDetails;

	static {
		employeeDetails = null;
	}

	public EmployeeDaoImpl() throws EmployeeException, ClassNotFoundException, IOException {
		if (readEmployeeDetails().isEmpty())
			employeeDetails = populateSampleEmployeeData();
		else
			employeeDetails = readEmployeeDetails();
	}

	@Override
	public void hireEmployeeDao(String employeeId, String employeeName, LocalDate employeeDOB, double employeeSalary,
			String departmentId) throws EmployeeException {

		employeeIdValidation(new Employee(employeeId), employeeDetails);
		employeeDetails.add(new Employee(employeeId, employeeName, employeeDOB, employeeSalary, departmentId));
	}

	@Override
	public void printEmployeeDetailsDao(String employeeId) throws EmployeeException {
		employeeIdExistsValidation(new Employee(employeeId), employeeDetails);
		for (Employee emp : employeeDetails) {
			if (emp.getEmployeeId().equals(employeeId)) {
				System.out.println(emp);
				break;
			}
		}
	}

	@Override
	public void printDeptEmployeeDetailsDao(String departmentId) throws EmployeeException {
		ArrayList<Employee> deptWiseEmployee = new ArrayList<>();
		for (int i = 0; i < employeeDetails.size(); ++i) {
			if (employeeDetails.get(i).getDepartmentId().equals(departmentId))
				deptWiseEmployee.add(employeeDetails.get(i));
		}

		Collections.sort(deptWiseEmployee, new EmployeeDOBComparator());
		for (Employee emp : deptWiseEmployee)
			System.out.println(emp);
	}

	@Override
	public void writeEmployeeDetailsDao() throws IOException {
		writeEmployeeDetails(employeeDetails);
	}
}