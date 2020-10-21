package com.app.tester;

import java.io.IOException;
import java.util.Scanner;

import com.app.exceptions.EmployeeException;
import com.app.service.EmployeeService;

public class TestEmployee {

	public static void main(String[] args) throws EmployeeException, ClassNotFoundException, IOException {

		try (Scanner in = new Scanner(System.in)) {

			boolean exit = false;

			EmployeeService employee = new EmployeeService();

			while (!exit) {

				System.out.println("\nEnter 1 Hire New Employee");
				System.out.println("\nEnter 2 View Employee Details");
				System.out.println("\nEnter 3 View Employee Details From Specific Department Sorted by DOB");
				System.out.println("\nEnter 4 to EXIT");

				try {
					switch (in.nextInt()) {

					case 1:
						System.out.println("\nEnter the Employee Id, Name, Date of Birth, Salary, DepartmentId");
						employee.hireEmployeeService(in.next(), in.next(), in.next(), in.nextDouble(), in.next());
						break;

					case 2:
						System.out.println("\nEnter the Employee Id");
						employee.printEmployeeDetailsService(in.next());
						break;

					case 3:
						System.out.println("\nEnter the Employee's Department Id");
						employee.printDeptEmployeeDetailsService(in.next());
						break;

					case 4:
						employee.writeEmployeeDetailsService();
						exit = true;
						break;
					}
				} catch (Exception e) {
					System.out.println(e);

				} finally {
					in.nextLine();
				}
			}
		}
	}
}