package com.app.org;

public class Worker extends Employee {

	private int hoursWorked;
	private double workerHourlyRate;

	public int getHoursWorked() {
		return hoursWorked;
	}

	public void setHoursWorked(int hoursWorked) {
		this.hoursWorked = hoursWorked;
	}

	public double getWorkerHourlyRate() {
		return workerHourlyRate;
	}

	public void setWorkerHourlyRate(double workerHourlyRate) {
		this.workerHourlyRate = workerHourlyRate;
	}

	public Worker(String workerName, String workerDeptId, double workerSalaryBasic, int hoursWorked,
			double workerHourlyRate) {
		super(workerName, workerDeptId, workerSalaryBasic);
		this.hoursWorked = hoursWorked;
		this.workerHourlyRate = workerHourlyRate;
	}

	@Override
	public String toString() {
		return super.toString() + ", HOURS WORKED : " + hoursWorked + ", WORKER HOURLY RATE : " + workerHourlyRate
				+ ", NET SALARY : " + computeNetSalary();
	}

	@Override
	public double computeNetSalary() {
		return (super.getEmployeeSalaryBasic() + (hoursWorked * workerHourlyRate));
	}
}