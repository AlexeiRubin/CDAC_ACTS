package com.app.tester;

import static com.app.utils.CollectionUtils.populateList;

import java.util.List;
import java.util.Scanner;

import com.app.entity.Student;
import com.app.entity.Subject;;

public class TestStudent {

	public static void main(String[] args) {
		try (Scanner in = new Scanner(System.in)) {

			List<Student> studentDetails = populateList();

			boolean exit = false;

			while (!exit) {
				System.out.println("Enter 1 to View Student Details");
				System.out.println("Enter 2 to View AVG GPA of JAVA Students");
				System.out.println("Enter 3 to View JAVA Topper");
				System.out.println("Enter 4 to Sort JAVA Students by DOB");
				System.out.println("Enter 5 to EXIT");

				switch (in.nextInt()) {

				case 1:
					studentDetails.forEach(student -> System.out.println(student));
					break;

				case 2:
					System.out.println(
							studentDetails.stream().filter(student -> student.getStudentSubject().equals(Subject.JAVA))
									.mapToDouble(student -> student.getStudentGPA()).average().orElse(0.0));
					break;

				case 3:
					System.out.println(
							studentDetails.stream().filter(student -> student.getStudentSubject().equals(Subject.JAVA))
									.max((s1, s2) -> ((Double) s1.getStudentGPA()).compareTo(s2.getStudentGPA())).get()
									.getStudentName());
					break;

				case 4:
					studentDetails.stream().filter(student -> student.getStudentSubject().equals(Subject.JAVA))
							.sorted((s1, s2) -> s1.getStudentDOB().compareTo(s2.getStudentDOB()))
							.forEach(student -> System.out.println(student));
					break;

				case 5:
					exit = true;
					break;

				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}