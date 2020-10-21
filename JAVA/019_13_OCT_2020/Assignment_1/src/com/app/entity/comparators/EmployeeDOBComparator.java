package com.app.entity.comparators;

import java.util.Comparator;

import com.app.entity.core.Employee;

public class EmployeeDOBComparator implements Comparator<Employee> {

	@Override
	public int compare(Employee obj1, Employee obj2) {
		return obj1.getEmployeeDOB().compareTo(obj2.getEmployeeDOB());
	}
}