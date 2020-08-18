package com.app.org;

public class Manager extends Employee {

	private double managerPerformanceBonus;

	public double getManagerPerformanceBonus() {
		return managerPerformanceBonus;
	}

	public void setManagerPerformanceBonus(double managerPerformanceBonus) {
		this.managerPerformanceBonus = managerPerformanceBonus;
	}

	public Manager(String managerName, String managerDeptId, double managerSalaryBasic,
			double managerPerformanceBonus) {
		super(managerName, managerDeptId, managerSalaryBasic);
		this.managerPerformanceBonus = managerPerformanceBonus;
	}

	@Override
	public String toString() {
		return super.toString() + ", MANAGER PERFORMANCE BONUS : " + managerPerformanceBonus + ", NET SALARY : "
				+ computeNetSalary();
	}

	@Override
	public double computeNetSalary() {
		return (super.getEmployeeSalaryBasic() + managerPerformanceBonus);
	}
}