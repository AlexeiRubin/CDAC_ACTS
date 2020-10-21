package com.app.services;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

import com.app.entity.Student;

public class StudentSortService {

	public static List<Student> sortStudentsGPAListMap(Map<String, Student> hm) {

		ArrayList<Student> list = new ArrayList<>(hm.values());

		Collections.sort(list, new Comparator<Student>() {

			@Override
			public int compare(Student o1, Student o2) {
				System.out.println("In Thread SORT by GPA");

				int ret = ((Double) o1.getStudentGPA()).compareTo(o2.getStudentGPA());
				return ret;
			}
		});

		return list;
	}

	public static List<Student> sortStudentsDoBListMap(Map<String, Student> hm) {

		ArrayList<Student> list = new ArrayList<>(hm.values());

		Collections.sort(list, new Comparator<Student>() {

			@Override
			public int compare(Student o1, Student o2) {
				System.out.println("In Thread SORT by DOB");
				return o1.getStudentDOB().compareTo(o2.getStudentDOB());
			}
		});

		return list;
	}
}