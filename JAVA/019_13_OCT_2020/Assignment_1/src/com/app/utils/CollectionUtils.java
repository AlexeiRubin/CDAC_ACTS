package com.app.utils;

import static java.time.LocalDate.parse;

import java.util.ArrayList;

import com.app.entity.core.Employee;

public class CollectionUtils {
	public static ArrayList<Employee> populateSampleEmployeeData() {
		ArrayList<Employee> employeeSampleData = new ArrayList<>();

		employeeSampleData.add(new Employee("101A", "A", parse("1990-05-10"), 1000.00, "A1"));
		employeeSampleData.add(new Employee("101B", "B", parse("1991-06-11"), 2100.00, "B1"));
		employeeSampleData.add(new Employee("101C", "C", parse("1992-07-12"), 3200.00, "C1"));
		employeeSampleData.add(new Employee("103A", "D", parse("1993-08-13"), 4300.00, "A1"));
		employeeSampleData.add(new Employee("103B", "E", parse("1994-09-14"), 5400.00, "B1"));
		employeeSampleData.add(new Employee("103C", "F", parse("1995-10-15"), 5500.00, "C1"));
		employeeSampleData.add(new Employee("102A", "G", parse("1989-04-09"), 4500.00, "A1"));
		employeeSampleData.add(new Employee("102B", "H", parse("1988-03-08"), 3400.00, "B1"));
		employeeSampleData.add(new Employee("102C", "I", parse("1987-02-07"), 2300.00, "C1"));
		employeeSampleData.add(new Employee("101D", "J", parse("1986-01-06"), 1200.00, "D1"));

		return employeeSampleData;
	}
}