package com.app.org;

public class Employee {

	public static int employeeIdCounter = 0;
	private int employeeId;
	private String employeeName, employeeDeptId;
	private double employeeSalaryBasic;

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

	public Employee() {
		this.employeeId = 0;
		this.employeeName = null;
		this.employeeDeptId = null;
		this.employeeSalaryBasic = 0.0;
	}

	public Employee(String employeeName, String employeeDeptId, double employeeSalaryBasic) {
		this.employeeId = ++employeeIdCounter;
		this.employeeName = employeeName;
		this.employeeDeptId = employeeDeptId;
		this.employeeSalaryBasic = employeeSalaryBasic;
	}

	@Override
	public String toString() {
		return "EMPLOYEE ID : " + employeeId + ", EMPLOYEE NAME : " + employeeName + ", EMPLOYEE Department ID : "
				+ employeeDeptId + ", EMPLOYEE Salary Basic : " + employeeSalaryBasic;
	}

	public double computeNetSalary() {
		return 0.0;
	}
}