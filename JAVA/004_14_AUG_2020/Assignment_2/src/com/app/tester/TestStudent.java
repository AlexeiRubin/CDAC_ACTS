package com.app.tester;

import java.util.*;
import com.app.core.*;

public class TestStudent {

	private static Scanner in = new Scanner(System.in);

	public static void main(String[] args) {
		System.out.println("Enter the strength of the Class");

		Student[] nominalRoll = new Student[in.nextInt()];

		for (int i = 0; i < nominalRoll.length; ++i)
			nominalRoll[i] = new Student();

		while (true) {
			System.out.println("\nEnter 1 to Admit A New Student.");
			System.out.println("Enter 2 to Assign Scores");
			System.out.println("Enter 3 to View Details of The Topper");
			System.out.println("Enter 4 to EXIT");
			int choice = in.nextInt();

			if (choice == 4)
				break;

			switch (choice) {
			case 1:
				if (Student.idCounter == nominalRoll.length) {
					System.out.println("\nClass Capacity Full");
					break;
				}

				System.out.println("\nEnter the Name, Email Id and Age of the Student");
				nominalRoll[Student.idCounter] = new Student(in.next(), in.next(), in.nextInt());

				break;

			case 2:
				if (Student.idCounter < 1) {
					System.out.println("\nPlease Enter at least one Student");
					break;
				}

				System.out.println("\nEnter the Student Id");
				int inputId = in.nextInt();

				if ((inputId > nominalRoll.length) || (inputId < 0) || (inputId > Student.idCounter)) {
					System.out.println("Invalid Student ID");
					break;
				}

				System.out.println("\nEnter Quiz Score, Test Score and Assignment Score");

				double quizScore = in.nextDouble();
				if (quizScore > 100) {
					System.out.println("Quiz Score CANNOT be greater than 100");
					break;
				}

				double testScore = in.nextDouble();
				if (testScore > 100) {
					System.out.println("Test Score CANNOT be greater than 100");
					break;
				}

				double assignmentScore = in.nextDouble();
				if (assignmentScore > 100) {
					System.out.println("Assignment Score CANNOT be greater than 100");
					break;
				}

				nominalRoll[inputId - 1].computeGpa(quizScore, testScore, assignmentScore);

				System.out.println("\nScores Added & GPA Computed");

				break;

			case 3:
				if (Student.idCounter < 1) {
					System.out.println("\nPlease Enter at least one Student");
					break;
				}

				System.out.println("\nThe Details of the Topper are :");
				double maxGPA = Double.MIN_VALUE;
				int studentIdMaxGPA = 1;

				for (Student itrStudent : nominalRoll) {
					if (itrStudent.getStudentId() == 0)
						break;

					if (itrStudent.getStudentGPA() > maxGPA) {
						maxGPA = itrStudent.getStudentGPA();
						studentIdMaxGPA = itrStudent.getStudentId();
					}
				}

				System.out.println(nominalRoll[studentIdMaxGPA - 1].fetchDetails());
				break;
			}
		}
	}
}