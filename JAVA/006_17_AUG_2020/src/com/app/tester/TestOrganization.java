package com.app.tester;

import java.util.*;
import com.app.org.*;

public class TestOrganization {

	private static Scanner in = new Scanner(System.in);

	public static void main(String[] args) {

		System.out.println("Enter the number of Employees to be Hired");

		Employee[] employeeHiringList = new Employee[in.nextInt()];

		boolean exit = false;

		while (!exit) {
			System.out.println("\nEnter 1 to Hire a Manager");
			System.out.println("\nEnter 2 to Hire a Worker");
			System.out.println("\nEnter 3 to get Employee Details");
			System.out.println("\nEnter 10 to EXIT");

			switch (in.nextInt()) {
			case 1:
				if (Employee.employeeIdCounter == employeeHiringList.length) {
					System.out.println("\nCan't Hire More Managers");
					break;
				}

				System.out.println("\nEnter the Name, Department ID, Basic Salary & Perfromance Bonus");

				employeeHiringList[Employee.employeeIdCounter] = new Manager(in.next(), in.next(), in.nextInt(),
						in.nextDouble());
				in.nextLine();

				break;

			case 2:
				if (Employee.employeeIdCounter == employeeHiringList.length) {
					System.out.println("\nCan't Hire More Workers");
					break;
				}

				System.out.println("\nEnter the Name, Department ID, Basic Salary, Hours Worked & Hourly Work Rate");

				employeeHiringList[Employee.employeeIdCounter] = new Worker(in.next(), in.next(), in.nextInt(),
						in.nextInt(), in.nextDouble());
				in.nextLine();

				break;

			case 3:
				if (Employee.employeeIdCounter < 1) {
					System.out.println("\nPlease Enter at least one Hiree Details");
					break;
				}

				for (Employee hiree : employeeHiringList) {
					if (hiree == null)
						break;

					if (hiree instanceof Manager)
						System.out.println("\n" + (Manager) hiree);
					else if (hiree instanceof Worker)
						System.out.println("\n" + (Worker) hiree);
					else
						System.out.println("\nHiree is Neither a Manager Nor a Worker");
				}
				break;

			case 10:
				exit = true;
				break;
			}
		}
		in.close();
	}
}