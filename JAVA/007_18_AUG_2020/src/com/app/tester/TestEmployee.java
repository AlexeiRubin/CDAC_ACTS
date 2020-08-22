package com.app.tester;

import java.util.Scanner;

import com.app.core.Employee;
import com.app.impl.*;
import com.app.specification.Stack;

public class TestEmployee {

	private static Scanner in = new Scanner(System.in);

	public static void main(String[] args) {

		int choice = Integer.MIN_VALUE;
		boolean initialChoiceMade = false;
		boolean exit = false;
		Stack stack = null;

		while (!exit) {

			if (!initialChoiceMade) {

				System.out.println("\nEnter 1 for Fixed Stack Implementation");
				System.out.println("\nEnter 2 for Growable Stack Implementation");

				choice = in.nextInt();

			} else {

				System.out.println("\nEnter 3 to PUSH Data");
				System.out.println("\nEnter 4 to POP & Display");
				System.out.println("\nEnter 5 to EXIT");

				choice = in.nextInt();
			}

			switch (choice) {

			case 1:
				stack = new FixedStackImpl();
				initialChoiceMade = true;
				break;

			case 2:
				stack = new GrowableStackImpl();
				initialChoiceMade = true;
				break;

			case 3:
				System.out.println("\nEnter the ID & NAME of the Employee");
				Employee objRef = new Employee(in.nextInt(), in.next());
				in.nextLine();

				stack.push(objRef);
				break;

			case 4:
				stack.pop();
				break;

			case 5:
				initialChoiceMade = false;
				exit = true;
				break;
			}
		}
		in.close();
	}
}