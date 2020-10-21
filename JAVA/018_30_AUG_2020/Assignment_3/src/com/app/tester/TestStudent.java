package com.app.tester;

import static com.app.utils.CollectionUtils.populateList;
import static com.app.utils.CollectionUtils.populateMap;

import java.util.Map;
import java.util.Scanner;

import com.app.entity.Student;
import com.app.tasks.StudentSortDOBTask;
import com.app.tasks.StudentSortGPATask;

public class TestStudent {

	public static void main(String[] args) {
		try (Scanner sc = new Scanner(System.in)) {

			Map<String, Student> studentMap = populateMap(populateList());

			System.out.println("Enter filename to Sort by GPA");
			Thread t_id1 = new Thread(new StudentSortGPATask(studentMap, sc.nextLine()), "StudentSortGPATask");

			System.out.println("Enter filename to Sort by DOB");
			Thread t_id2 = new Thread(new StudentSortDOBTask(studentMap, sc.nextLine()), "StudentSortDOBTask");

			t_id1.start();
			t_id2.start();

			t_id1.join();
			t_id2.join();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}