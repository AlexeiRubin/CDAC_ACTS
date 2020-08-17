package com.app.org;

public class Manager extends Employee {

	private double managerPerformanceBonus;

	public double getManagerPerformanceBonus() {
		return managerPerformanceBonus;
	}

	public void setManagerPerformanceBonus(double managerPerformanceBonus) {
		this.managerPerformanceBonus = managerPerformanceBonus;
	}

	public Manager() {
		this.managerPerformanceBonus = 0.0;
	}

	public Manager(String managerName, String managerDeptId, double managerSalaryBasic,
			double managerPerformanceBonus) {
		super(managerName, managerDeptId, managerSalaryBasic);
		this.managerPerformanceBonus = managerPerformanceBonus;
	}

	@Override
	public String toString() {
		return "MANAGER ID : " + super.getEmployeeId() + ", MANAGER NAME : " + super.getEmployeeName()
				+ ", MANAGER Department ID : " + super.getEmployeeDeptId() + ", MANAGER SALARY BASIC : "
				+ super.getEmployeeSalaryBasic() + ", MANAGER PERFORMANCE BONUS : " + managerPerformanceBonus
				+ ", NET SALARY : " + computeNetSalary();
	}

	@Override
	public double computeNetSalary() {
		return (super.getEmployeeSalaryBasic() + managerPerformanceBonus);
	}
}