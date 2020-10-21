package com.app.entity.core;

import java.io.Serializable;
import java.time.LocalDate;

public class Employee implements Serializable, Comparable<Employee> {

	private static final long serialVersionUID = 1L;
	private String employeeId;
	private String employeeName;
	private LocalDate employeeDOB;
	private double employeeSalary;
	private String departmentId;

	public Employee(String employeeId, String employeeName, LocalDate employeeDOB, double employeeSalary,
			String departmentId) {
		this.employeeId = employeeId;
		this.employeeName = employeeName;
		this.employeeDOB = employeeDOB;
		this.employeeSalary = employeeSalary;
		this.departmentId = departmentId;
	}

	public Employee(String employeeId) {
		this.employeeId = employeeId;
	}

	public String getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}

	public String getEmployeeName() {
		return employeeName;
	}

	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}

	public LocalDate getEmployeeDOB() {
		return employeeDOB;
	}

	public void setEmployeeDOB(LocalDate employeeDOB) {
		this.employeeDOB = employeeDOB;
	}

	public double getEmployeeSalary() {
		return employeeSalary;
	}

	public void setEmployeeSalary(double employeeSalary) {
		this.employeeSalary = employeeSalary;
	}

	public String getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((employeeId == null) ? 0 : employeeId.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!(obj instanceof Employee))
			return false;
		Employee other = (Employee) obj;
		if (employeeId == null) {
			if (other.employeeId != null)
				return false;
		} else if (!employeeId.equals(other.employeeId))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "EMPLOYEE ID : " + employeeId + ", EMPLOYEE NAME : " + employeeName + ", EMPLOYEE DOB : " + employeeDOB
				+ ", EMPLOYEE SALARY : " + employeeSalary + ", EMPLOYEE DEPT ID : " + departmentId;
	}

	@Override
	public int compareTo(Employee obj) {
		return this.employeeDOB.compareTo(obj.employeeDOB);
	}
}