package com.app.core;

public class Employee {
	private int employeeId;
	private String employeeName;

	public Employee(int employeeId, String employeeName) {
		this.employeeId = employeeId;
		this.employeeName = employeeName;
	}

	@Override
	public String toString() {
		return "ID : " + employeeId + ", NAME : " + employeeName;
	}
}