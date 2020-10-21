package com.app.tester;

import static com.app.utils.CollectionUtils.populateList;
import static com.app.utils.CollectionUtils.populateMap;

import java.util.ArrayList;
import java.util.Map;
import java.util.Scanner;

import com.app.entity.Student;
import com.app.tasks.StudentSortDOBTask;
import com.app.tasks.StudentSortGPATask;
import com.app.tasks.StudentSortSubjectTask;

public class TestStudent {

	public static void main(String[] args) {
		try (Scanner in = new Scanner(System.in)) {

			Map<String, Student> studentMap = populateMap(populateList());
			ArrayList<Thread> threads = new ArrayList<>();

			System.out.println("Enter the filename for GPA Sorted details");
			threads.add(new Thread(new StudentSortGPATask(studentMap, in.next()), "StudentSortGPATask"));

			System.out.println("\nEnter the filename for DOB Sorted details");
			threads.add(new Thread(new StudentSortDOBTask(studentMap, in.next()), "StudentSortDOBTask"));

			System.out.println("\nEnter the filename for SUBJECT Sorted details");
			threads.add(new Thread(new StudentSortSubjectTask(studentMap, in.next()), "StudentSortSubjectTask"));

			for (Thread t_id : threads)
				t_id.start();

			for (Thread t_id : threads)
				t_id.join();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}