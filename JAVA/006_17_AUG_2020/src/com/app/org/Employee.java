package com.app.org;

public abstract class Employee {

	public static int employeeIdCounter;

	private int employeeId;
	private String employeeName, employeeDeptId;
	private double employeeSalaryBasic;

	static {
		employeeIdCounter = 0;
	}

	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

	public String getEmployeeName() {
		return employeeName;
	}

	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}

	public String getEmployeeDeptId() {
		return employeeDeptId;
	}

	public void setEmployeeDeptId(String employeeDeptId) {
		this.employeeDeptId = employeeDeptId;
	}

	public double getEmployeeSalaryBasic() {
		return employeeSalaryBasic;
	}

	public void setEmployeeSalaryBasic(double employeeSalaryBasic) {
		this.employeeSalaryBasic = employeeSalaryBasic;
	}

	public Employee(String employeeName, String employeeDeptId, double employeeSalaryBasic) {
		this.employeeId = ++employeeIdCounter;
		this.employeeName = employeeName;
		this.employeeDeptId = employeeDeptId;
		this.employeeSalaryBasic = employeeSalaryBasic;
	}

	@Override
	public String toString() {
		return "ID : " + employeeId + ", NAME : " + employeeName + ", DEPARTMENT ID : " + employeeDeptId
				+ ", SALARY BASIC : " + employeeSalaryBasic;
	}

	public abstract double computeNetSalary();
}